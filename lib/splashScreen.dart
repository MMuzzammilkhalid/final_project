import 'dart:async';
import 'package:flutter/material.dart';

import 'firstScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToMainScreen();
  }

  Future<void> _navigateToMainScreen() async {
    await Future.delayed(Duration(seconds: 5));
    // Navigate to the main screen or home screen here
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => First(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade600,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo1.png'), // Use your logo path here
            SizedBox(height: 20),
            // CircularProgressIndicator(), // You can add a loading indicator if needed
          ],
        ),
      ),
    );
  }
}
