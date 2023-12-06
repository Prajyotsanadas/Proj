import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feedback App',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: FeedbackPage(),
    );
  }
}

class FeedbackPage extends StatefulWidget {
  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _feedbackController = TextEditingController();

  void _showFeedbackDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white.withOpacity(0.9),
          title: Text(
            message,
            style: TextStyle(color: Colors.lightGreen),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Email:'),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'Enter your Email',
              ),
            ),
            SizedBox(height: 16),
            Text('Feedback:'),
            TextField(
              controller: _feedbackController,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Please enter your feedback',
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Implement the send feedback functionality
                    String name = _nameController.text;
                    String feedback = _feedbackController.text;
                    print('Name: $name\nFeedback: $feedback');
                    // Add logic to send feedback

                    _showFeedbackDialog('Feedback sent');
                  },
                  child: Text('Send'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Implement the cancel functionality
                    _nameController.clear();
                    _feedbackController.clear();

                    _showFeedbackDialog('Cancelled');
                  },
                  child: Text('Cancel'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
