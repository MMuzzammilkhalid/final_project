import 'package:flutter/material.dart';

import 'Beef.dart';
import 'King.dart';
import 'Rice.dart';
import 'Rolls.dart';
import 'Sweet.dart';

class ChineseDishes extends StatefulWidget {
  const ChineseDishes({super.key});

  @override
  State<ChineseDishes> createState() => _ChineseDishesState();
}

class _ChineseDishesState extends State<ChineseDishes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chinese Dishes")),
      body: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                child: Text(
                  "1.   Beef with Brocali",
                  style: TextStyle(fontSize: 30),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Beef()),
                  );
                },
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rice()),
                  );
                },
                child: Text(
                  "2.   Fried Rice",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => King()),
                  );
                },
                child: Text(
                  "3.   King Pao Shrimp",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rolls()),
                  );
                },
                child: Text(
                  "4.   Spring Rolls",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Sweet()),
                  );
                },
                child: Text(
                  "5.   Sweet and Sour Chicken",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Divider(),
            ],
          )),
    );
  }
}
