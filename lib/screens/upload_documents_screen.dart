import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class UploadDocumentsScreen extends StatefulWidget {
  @override
  _UploadDocumentsScreenState createState() => _UploadDocumentsScreenState();
}

class _UploadDocumentsScreenState extends State<UploadDocumentsScreen> {
  List<PlatformFile>? _files;

  void _pickFiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'jpg', 'png'],
    );

    if (result != null) {
      setState(() {
        _files = result.files;
      });
    } else {
      // User canceled the picker
    }
  }

  void _uploadFiles() {
    if (_files != null && _files!.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Uploading ${_files!.length} documents...')),
      );
      // Handle file upload logic here (e.g., send to server)
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('No documents selected')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Documents'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton.icon(
              onPressed: _pickFiles,
              icon: Icon(Icons.upload_file),
              label: Text('Select Documents'),
            ),
            SizedBox(height: 20),
            _files != null && _files!.isNotEmpty
                ? Expanded(
                    child: ListView.builder(
                      itemCount: _files!.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Icon(Icons.insert_drive_file),
                          title: Text(_files![index].name),
                        );
                      },
                    ),
                  )
                : Text('No documents selected'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _uploadFiles,
              child: Text('Upload Documents'),
            ),
          ],
        ),
      ),
    );
  }
}
