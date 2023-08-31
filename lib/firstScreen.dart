import 'package:flutter/material.dart';
import 'package:mamas_recipe/login.dart';
import 'package:mamas_recipe/signUp.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButtonIcon(),
        title: Text("LogIn OR SignUp"),
      ),
      backgroundColor: Colors.red.shade600,
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: const AssetImage("assets/logo1.png"),
                radius: MediaQuery.of(context).size.height / 4.5,
              ),
            ),
            ElevatedButton(
              style: const ButtonStyle(),
              child: const Text("Sign Up", style: TextStyle(fontSize: 30)),
              onPressed: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ));
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "OR",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: const Text("Log In", style: TextStyle(fontSize: 31)),
              onPressed: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ));
                });
              },
            )
          ]),
        ),
      ),
    );
  }
}
