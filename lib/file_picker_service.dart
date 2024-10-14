import 'package:file_picker/file_picker.dart';

class FilePickerService {
  // Method to pick multiple files
  Future<List<PlatformFile>?> pickFiles() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: true,
        type: FileType.custom,
        allowedExtensions: ['pdf', 'doc', 'docx', 'jpg', 'png'],
      );
      if (result != null) {
        return result.files;
      } else {
        // User canceled the picker
        return null;
      }
    } catch (e) {
      print('Error picking files: $e');
      return null;
    }
  }

  // Method to pick a single file
  Future<PlatformFile?> pickSingleFile() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf', 'doc', 'docx', 'jpg', 'png'],
      );
      if (result != null && result.files.isNotEmpty) {
        return result.files.first;
      } else {
        // User canceled the picker
        return null;
      }
    } catch (e) {
      print('Error picking a file: $e');
      return null;
    }
  }
}
