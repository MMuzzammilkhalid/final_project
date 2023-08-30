import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isLoading = true;
  late User _user; // Store the logged-in user
  late DocumentSnapshot _userProfile;

  @override
  void initState() {
    super.initState();
    _user = FirebaseAuth.instance.currentUser!;

    // Fetch user's profile data from Firestore
    FirebaseFirestore.instance
        .collection('Users')
        .doc(_user.uid) // Assuming UID is used as the document ID
        .get()
        .then((snapshot) {
      if (snapshot.exists) {
        setState(() {
          _userProfile = snapshot;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (_userProfile != null)
              Text(
                'Name: ${_userProfile['name']}',
                style: TextStyle(fontSize: 20),
              ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            if (_userProfile != null)
              Text('Email: ${_userProfile['email']}',
                  style: TextStyle(fontSize: 20)),
            Divider(),
            SizedBox(
              height: 10,
            ),
            if (_userProfile != null)
              Text('Password: ${_userProfile['password']}',
                  style: TextStyle(fontSize: 20)),
            Divider(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
