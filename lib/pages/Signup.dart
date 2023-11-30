import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nikisha',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
              top: 67,
              left: 50,
              child: Text('Create a', style: TextStyle(fontSize: 30)),
            ),
            Positioned(
              top: 100,
              left: 50,
              child: Text(
                'TrashTrack',
                style: TextStyle(fontSize: 38, color: Color.fromRGBO(36, 139, 52, 1)),
              ),
            ),
            Positioned(
              top: 108,
              left: 250,
              child: Text('Account', style: TextStyle(fontSize: 30)),
            ),
            Positioned(
              top: 160,
              left: 50,
              child: Text('Sign up to get started', style: TextStyle(fontSize: 15)),
            ),
            Positioned(
              top: 200,
              left: 50,
              child: Text('Full Name:', style: TextStyle(fontSize: 15)),
            ),
            Positioned(
              top: 220,
              left: 50,
              child: Container(
                height: 42,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 270,
              left: 50,
              child: Text('Email:', style: TextStyle(fontSize: 15)),
            ),
            Positioned(
              top: 290,
              left: 50,
              child: Container(
                height: 42,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 340,
              left: 50,
              child: Text('Phone:', style: TextStyle(fontSize: 15)),
            ),
            Positioned(
              top: 360,
              left: 50,
              child: Container(
                height: 42,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 410,
              left: 50,
              child: Text('Gender:', style: TextStyle(fontSize: 15)),
            ),
            Positioned(
              top: 430,
              left: 50,
              child: Row(
                children: [
                  Radio(
                    value: 'male',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    },
                  ),
                  Text('Male'),
                  Radio(
                    value: 'female',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    },
                  ),
                  Text('Female'),
                ],
              ),
            ),

            Positioned(
              top: 470,
              left: 50,
              child: Text('Password:', style: TextStyle(fontSize: 15)),
            ),
            Positioned(
              top: 490,
              left: 50,
              child: Container(
                height: 42,
                width: 300,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),

            Positioned(
              top: 540,
              left: 50,
              child: Text('Confirm Password:', style: TextStyle(fontSize: 15)),
            ),
            Positioned(
              top: 560,
              left: 50,
              child: Container(
                height: 42,
                width: 300,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 630,
              left: 50,
              child: InkWell(
                onTap: (){

                },
                child: Container(
                  height: 50,
                  width: 300,

                  decoration: BoxDecoration(

                      color: Color.fromRGBO(36, 139, 52, 100)
                  ),
                  child: Center(child: Text("Sign up", style: TextStyle(fontSize: 20)),
                ),
              ),
            )
            ),
            Positioned(
              top: 710,
              left: 120,
              child: Text('Already have an account?', style: TextStyle(fontSize: 15)),
            ),
            Positioned(
              top: 730,
              left: 180,
              child: Text('LOGIN', style: TextStyle(fontSize: 15, color: Color.fromRGBO(36, 139, 52, 100))),
            ),
          ],
        ),
      ),
    );
  }
}
