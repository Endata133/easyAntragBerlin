
import 'package:flutter/material.dart';
import 'package:easy_antrag/screens/submit_application_screen.dart';

class SubmitApplicationButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SubmitApplicationScreen()),
        );
      },
      child: Text('Submit an Application'),
    );
  }
}
