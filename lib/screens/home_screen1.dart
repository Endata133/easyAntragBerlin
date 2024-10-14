/*

import 'package:flutter/material.dart';
import 'package:easy_antrag/screens/submit_application_screen.dart';
import 'package:easy_antrag/screens/upload_documents_screen.dart';
import 'package:easy_antrag/screens/track_application_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Easy Antrag'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Easy Antrag',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SubmitApplicationScreen()),
                );
              },
              child: Text('Submit an Application'),
            ),
            SizedBox(height: 10),
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
        ),
      ),
    );
  }
}

*/
