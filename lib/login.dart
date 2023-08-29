import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mamas_recipe/firstScreen.dart';

import 'dashboard.dart';
import 'home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  RegExp emailValidate = RegExp(r'^[a-zA-Z0-9]+@(gmail)+[/.](com)$');

  final _auth = FirebaseAuth.instance;

  Future<void> LogIn() async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: _emailController.text, password: _passwordController.text);
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext) => const Dashboard()));
    } catch (e) {
      Fluttertoast.showToast(
          msg: e.toString(),
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      // print("Error : $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButtonIcon(),
        title: const Text("Log In", style: TextStyle(fontSize: 20)),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/logo1.png',
                        height: MediaQuery.of(context).size.height / 2.5,
                      ), // Use your logo path here
                      SizedBox(
                        height: 5,
                      ),
                      // CircularProgressIndicator(), // You can add a loading indicator if needed
                    ],
                  ),
                ),
                TextFormField(
                  controller: _emailController,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Email field cannot be empty";
                    } else if (emailValidate.hasMatch(value)) {
                      return null;
                    } else {
                      return "Invalid Email";
                    }
                  },
                  decoration: const InputDecoration(
                      hintText: "Please enter your Email",
                      label: Text("Email"),
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _passwordController,
                  validator: (String? value) {
                    if (value == "") {
                      return "password field cannot be empty";
                    } else if (value!.length < 8) {
                      return "Password length must be greater than 8";
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                      hintText: "Please enter your Password",
                      label: Text("Password"),
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        LogIn();
                      }
                    },
                    child:
                        const Text("Log In", style: TextStyle(fontSize: 30))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
