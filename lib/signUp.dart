import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mamas_recipe/dashboard.dart';

import 'home.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  RegExp emailValidate = RegExp(r'^[a-zA-Z0-9]+@(gmail)+[/.](com)$');
  RegExp numValidate = RegExp(r'^(03)[0-9]{9}$');

  final _auth = FirebaseAuth.instance;

  void signUp() async {
    try {
      final UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
              email: emailController.text, password: passwordController.text);
      await FirebaseFirestore.instance
          .collection("Users")
          .doc(userCredential.user!.uid)
          .set({
        'email': emailController.text,
        'name': nameController.text,
        'password': passwordController.text,
      });
      if (context.mounted) {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Dashboard()),
        );
      }
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
        title: const Text("Sign Up", style: TextStyle(fontSize: 20)),
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
                  controller: nameController,
                  validator: (String? value) {
                    if (value == "") {
                      return "Name field cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                      hintText: "Please enter your name",
                      label: Text("User Name"),
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: emailController,
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
                  controller: passwordController,
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
                        signUp();
                      }
                    },
                    child:
                        const Text("Sign up", style: TextStyle(fontSize: 30))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
