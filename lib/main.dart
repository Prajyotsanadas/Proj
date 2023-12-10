import 'package:flutter/material.dart';
import 'package:trash_track/pages/Dashboard_Page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:trash_track/pages/Login_Page.dart';
import 'package:trash_track/pages/notification.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
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
      home: LoginPage(),
    );
  }
}

