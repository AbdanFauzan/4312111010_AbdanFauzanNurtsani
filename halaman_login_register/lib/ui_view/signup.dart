import 'package:flutter/material.dart';
import 'package:halaman_login_register/ui_view/login.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.black87,
              width: 250,
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: "Fullname",
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.black87,
              width: 250,
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.black87,
              width: 250,
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              padding: const EdgeInsets.all(20),
              minWidth: 250,
              color: Colors.black,
              onPressed: () {},
              child: const Text(
                "REGISTER",
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              child: const Text(
                "Already registered! Login me",
                style: TextStyle(color: Colors.white),
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
