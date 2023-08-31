import 'package:flutter/material.dart';

import 'Flafel.dart';
import 'Hummus.dart';
import 'Kabsa.dart';
import 'Mansaf.dart';
import 'Shawarma.dart';

class ArabianDishes extends StatefulWidget {
  const ArabianDishes({super.key});

  @override
  State<ArabianDishes> createState() => _ArabianDishesState();
}

class _ArabianDishesState extends State<ArabianDishes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Arabian Dishes")),
      body: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                child: Text(
                  "1.   Flafel",
                  style: TextStyle(fontSize: 30),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Flafel()),
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
                    MaterialPageRoute(builder: (context) => Hummus()),
                  );
                },
                child: Text(
                  "2.   Hummus",
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
                    MaterialPageRoute(builder: (context) => Kabsa()),
                  );
                },
                child: Text(
                  "3.   Kabsa",
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
                    MaterialPageRoute(builder: (context) => Mansaf()),
                  );
                },
                child: Text(
                  "4.   Mansaf",
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
                    MaterialPageRoute(builder: (context) => Shawarma()),
                  );
                },
                child: Text(
                  "5.   Shawarma",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Divider(),
            ],
          )),
    );
  }
}
