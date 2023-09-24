import 'package:flutter/material.dart';
import 'package:halaman_login_register/ui_view/login.dart';
import 'package:halaman_login_register/ui_view/signup.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Register',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.android,
              color: Colors.white,
              size: 45,
            ),
            const SizedBox(
              height: 200,
            ),
            const Text("Welcome to Flutter",
                style: TextStyle(color: Colors.white, fontSize: 22)),
            const SizedBox(
              height: 10,
            ),
            const Text("Get real-time updates about what",
                style: TextStyle(color: Colors.white, fontSize: 18)),
            const Text("maters to you",
                style: TextStyle(color: Colors.white, fontSize: 18)),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              minWidth: 210,
              color: Colors.white,
              textColor: Colors.lightBlue,
              child: const Text(
                "Sign Up",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const SignUp()));
              },
            ),
            MaterialButton(
              child: const Text(
                "Log in",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const Login()));
              },
            )
          ],
        ),
      ),
    );
  }
}
