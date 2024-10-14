
import 'package:flutter/material.dart';
import 'package:easy_antrag/screens/upload_documents_screen.dart';
import 'package:easy_antrag/screens/track_application_screen.dart';

class UploadAndTrackButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UploadDocumentsScreen()),
            );
          },
          child: Text('Upload Documents'),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TrackApplicationScreen()),
            );
          },
          child: Text('Track Your Application'),
        ),
      ],
    );
  }
}
