import 'package:flutter/material.dart';
import 'package:halaman_login_register/ui_view/signup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              width: 250,
              color: Colors.white,
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: "Email", border: InputBorder.none),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: 250,
              color: Colors.white,
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: "Password", border: InputBorder.none),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              padding: const EdgeInsets.all(20),
              minWidth: 250,
              color: Colors.white,
              child: const Text(
                "Login",
                style: TextStyle(color: Colors.lightBlue),
              ),
              onPressed: () {},
            ),
            MaterialButton(
              child: const Text(
                "Not a member? signup now",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const SignUp()));
              },
            )
          ],
        ),
      ),
    );
  }
}
