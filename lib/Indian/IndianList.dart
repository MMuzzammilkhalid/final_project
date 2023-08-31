import 'package:flutter/material.dart';

import 'ChickenCurry.dart';
import 'DalMakhni.dart';
import 'PalakPaneer.dart';
import 'PaneerTikka.dart';
import 'VegBiryani.dart';

class IndianDishes extends StatefulWidget {
  const IndianDishes({super.key});

  @override
  State<IndianDishes> createState() => _IndianDishesState();
}

class _IndianDishesState extends State<IndianDishes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Indian Dishes")),
      body: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                child: Text(
                  "1.   Chicken Curry",
                  style: TextStyle(fontSize: 30),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChickenCurry()),
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
                    MaterialPageRoute(builder: (context) => DalMakhni()),
                  );
                },
                child: Text(
                  "2.   Dal Makhni",
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
                    MaterialPageRoute(builder: (context) => PalakPaneer()),
                  );
                },
                child: Text(
                  "3.   Palak Paneer",
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
                    MaterialPageRoute(builder: (context) => PaneerTikka()),
                  );
                },
                child: Text(
                  "4.   Paneer Tikka",
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
                    MaterialPageRoute(builder: (context) => VegBiryani()),
                  );
                },
                child: Text(
                  "5.   Vegetable Biryani",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Divider(),
            ],
          )),
    );
  }
}
