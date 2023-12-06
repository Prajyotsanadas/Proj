import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(

        color: Color.fromRGBO(149, 218, 148, 1),
        child: Center(
          child: Container(
              color: Color.fromRGBO(149, 218, 148, 100),
              child: Image.asset("Assets/Images/img_1.png")
          ),
        ),

      ),
    );
  }
}
