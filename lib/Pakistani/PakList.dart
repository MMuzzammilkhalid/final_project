import 'package:flutter/material.dart';

import 'AlooKeema.dart';
import 'biryani.dart';
import 'ChapliKabab.dart';
import 'Nihari.dart';
import 'Samosa.dart';

class PakDishes extends StatefulWidget {
  const PakDishes({super.key});

  @override
  State<PakDishes> createState() => _PakDishesState();
}

class _PakDishesState extends State<PakDishes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pakistani Dishes")),
      body: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                child: Text(
                  "1.   Biryani",
                  style: TextStyle(fontSize: 30),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Biryani()),
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
                    MaterialPageRoute(builder: (context) => Nihari()),
                  );
                },
                child: Text(
                  "2.   Nihari",
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
                    MaterialPageRoute(builder: (context) => AlooKeema()),
                  );
                },
                child: Text(
                  "3.   Aloo Keema",
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
                    MaterialPageRoute(builder: (context) => ChapliKabab()),
                  );
                },
                child: Text(
                  "4.   Chapli Kabab",
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
                    MaterialPageRoute(builder: (context) => Samosa()),
                  );
                },
                child: Text(
                  "5.   Samosa",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Divider(),
            ],
          )),
    );
  }
}
