import 'package:flutter/material.dart';
import 'biryani.dart';

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
              Text(
                "1.   Biryani",
                style: TextStyle(fontSize: 30),
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              Text(
                "1.   Biryani",
                style: TextStyle(fontSize: 30),
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              Text(
                "1.   Biryani",
                style: TextStyle(fontSize: 30),
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              Text(
                "1.   Biryani",
                style: TextStyle(fontSize: 30),
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              Text(
                "1.   Biryani",
                style: TextStyle(fontSize: 30),
              ),
              Divider(),
            ],
          )),
    );
  }
}
