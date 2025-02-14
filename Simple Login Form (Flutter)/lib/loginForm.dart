// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
// import 'packages:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blueGrey,
          accentColor: Colors.amber,
        ),
      ),
      home: LoginForm(),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            // First Container
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 100.0),

              // Child: As Title
              child: Text(
                'Dear\nProgrammer',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50.0,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'GreatVibes',
                ),
              ),
            ),

            // UserName TextField
            Container(
              padding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 5.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                  labelStyle: TextStyle(
                    fontSize: 20.0,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 25.0, horizontal: 15.0),
                ),
                obscureText: true,
              ),
            ),

            // for spacing
            SizedBox(height: 20),

            // Passwoprd TextField
            Container(
              padding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 5.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    fontSize: 20,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 25.0,
                    horizontal: 15.0,
                  ),
                ),
                obscureText: true,
              ),
            ),

            // for spacing
            SizedBox(height: 30),

            // Third Container
            Container(
              padding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 5.0),
              child: SizedBox(
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                          vertical: 13.0, horizontal: 20.0)),
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 23)),
                    ),
                    child: Text(
                      'Log In',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
