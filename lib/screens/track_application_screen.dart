import 'package:flutter/material.dart';

class TrackApplicationScreen extends StatefulWidget {
  @override
  _TrackApplicationScreenState createState() => _TrackApplicationScreenState();
}

class _TrackApplicationScreenState extends State<TrackApplicationScreen> {
  final _formKey = GlobalKey<FormState>();
  String _trackingNumber = '';
  bool _isTracking = false;
  String _applicationStatus = '';

  void _trackApplication() {
    setState(() {
      _isTracking = true;
      _applicationStatus = 'In Progress'; // Placeholder status for now
    });

    // Simulate API request to get application status
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _applicationStatus = 'Your application is currently under review.';
        _isTracking = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Track Application'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Tracking Number',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your tracking number';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _trackingNumber = value!;
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        _trackApplication();
                      }
                    },
                    child: Text('Track Application'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            _isTracking
                ? Center(child: CircularProgressIndicator())
                : _applicationStatus.isNotEmpty
                    ? Text(
                        'Status: $_applicationStatus',
                        style: TextStyle(fontSize: 18),
                      )
                    : Container(),
          ],
        ),
      ),
    );
  }
}
