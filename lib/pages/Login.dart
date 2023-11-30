import 'package:flutter/material.dart';

void main() {
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
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

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

        child: Stack(
          children: [
            Positioned(
                top: 131,
                left: 50,
                child: Text('Welcome', style: TextStyle(fontSize: 30,),)),

            Positioned(
                top: 172,
                left: 50,
                child: Text('to', style: TextStyle(fontSize: 30,),)),

            Positioned(
                top: 166,
                left: 90,
                child: Text('TrashTrack', style: TextStyle(fontSize: 38, color: Color.fromRGBO(36, 139, 52, 1)),)),


            Positioned(
                top: 250,
                left: 50,
                child: Text('Sign in to your Trashtrack Account', style: TextStyle(fontSize: 15,),)),

            Positioned(
                top: 300,
                left: 50,
                child: Text('Mobile Number / Email', style: TextStyle(fontSize: 15,),)),

            Positioned(
              top: 330,
              left: 50,
              child: Container(
                height: 50,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),

                  ),
                ),
              ),
            ),

            Positioned(
                top: 400,
                left: 50,
                child: Text('Password:', style: TextStyle(fontSize: 15,),)),

            Positioned(
              top: 430,
              left: 50,
              child: Container(
                height: 50,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),

                  ),
                ),
              ),
            ),
            Positioned(
              top: 440,
                left: 310,
                child: Icon(Icons.remove_red_eye, color: Color.fromRGBO(36, 139, 52, 1))),

            Positioned(
                top: 480,
                left: 230,
                child: Text('Forgot Password', style: TextStyle(fontSize: 15, color: Color.fromRGBO(36, 139, 52, 1))),

            ),
          Positioned(
            top: 600,
            left: 50,
            child: InkWell(
              onTap:()
              {

              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(width:1, color: Color.fromRGBO(36, 139, 52, 100), )
                ),
                child: Center(child: Text("Login", style: TextStyle(fontSize: 20),)),

              ),
            ),
          ),
            Positioned(
              top: 675,
              left: 165,
              child: Text('New User?', style: TextStyle(fontSize: 15)),
            ),
            Positioned(
              top: 690,
              left: 140,
              child: Text('Create an Account', style: TextStyle(fontSize: 15, color: Color.fromRGBO(36, 139, 52, 100))),
            ),

          ],


        ),


      ),
    );
  }
}
