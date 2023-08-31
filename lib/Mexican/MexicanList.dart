import 'package:flutter/material.dart';

import 'Enchiladas.dart';
import 'Guacamole.dart';
import 'MaxicanRice.dart';
import 'Pastor.dart';
import 'Relenos.dart';

class MaxicanDishes extends StatefulWidget {
  const MaxicanDishes({super.key});

  @override
  State<MaxicanDishes> createState() => _MaxicanDishesState();
}

class _MaxicanDishesState extends State<MaxicanDishes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mexican Dishes")),
      body: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                child: Text(
                  "1.   Chiless Relenos",
                  style: TextStyle(fontSize: 30),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Relenos()),
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
                    MaterialPageRoute(builder: (context) => Enchiladas()),
                  );
                },
                child: Text(
                  "2.   Enchiladas",
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
                    MaterialPageRoute(builder: (context) => Guacamole()),
                  );
                },
                child: Text(
                  "3.   Guacamole",
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
                    MaterialPageRoute(builder: (context) => MaxicanRice()),
                  );
                },
                child: Text(
                  "4.   Maxican Rice",
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
                    MaterialPageRoute(builder: (context) => Pastor()),
                  );
                },
                child: Text(
                  "5.   Tacos al Pastor",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Divider(),
            ],
          )),
    );
  }
}
