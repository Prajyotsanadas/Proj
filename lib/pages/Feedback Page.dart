import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feedback App',
      debugShowCheckedModeBanner: false,
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
  TextEditingController _emailController = TextEditingController();
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

  void _showRequiredFieldsDialog() {
    _showFeedbackDialog('All fields are required');
  }

  void _showInvalidEmailDialog() {
    _showFeedbackDialog('Invalid email format');
  }

  bool _isEmailValid(String email) {
    // Use a regular expression to check for a valid email format
    final emailRegex =
    RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    return emailRegex.hasMatch(email);
  }

  void _sendFeedback() {
    String email = _emailController.text;
    String feedback = _feedbackController.text;

    if (email.isEmpty || feedback.isEmpty) {
      _showRequiredFieldsDialog();
    } else if (!_isEmailValid(email)) {
      _showInvalidEmailDialog();
    } else {
      // Implement the send feedback functionality
      print('Email: $email\nFeedback: $feedback');
      // Add logic to send feedback

      _showFeedbackDialog('Feedback sent');
    }
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
              controller: _emailController,
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
                  onPressed: _sendFeedback,
                  child: Text('Send'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Implement the cancel functionality
                    _emailController.clear();
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
