import 'package:flutter/material.dart';
import 'package:trash_track/pages/Calendar.dart';
import 'package:trash_track/pages/Login.dart';
import 'package:trash_track/pages/notification.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...

 void main() {
  runApp(const MyApp());

  Firebase.initializeApp(
options: DefaultFirebaseOptions.currentPlatform,
);
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //nikisha dona

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'hello',),
    );
  }
}

