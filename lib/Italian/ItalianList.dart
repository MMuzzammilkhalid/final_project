import 'package:flutter/material.dart';
import 'pizza.dart';

import 'Lasagana.dart';
import 'Risotto.dart';
import 'Spaghetti.dart';
import 'Tiramisu.dart';

class ItalianDishes extends StatefulWidget {
  const ItalianDishes({super.key});

  @override
  State<ItalianDishes> createState() => _ItalianDishesState();
}

class _ItalianDishesState extends State<ItalianDishes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Italian Dishes")),
      body: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                child: Text(
                  "1.   Lasagana",
                  style: TextStyle(fontSize: 30),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Lasagana()),
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
                    MaterialPageRoute(builder: (context) => Pizza()),
                  );
                },
                child: Text(
                  "2.   Margheritta Pizza",
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
                    MaterialPageRoute(builder: (context) => Risotto()),
                  );
                },
                child: Text(
                  "3.   Risotto",
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
                    MaterialPageRoute(builder: (context) => Spaghetti()),
                  );
                },
                child: Text(
                  "4.   Spaghetti Carbonara",
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
                    MaterialPageRoute(builder: (context) => Tiramisu()),
                  );
                },
                child: Text(
                  "5.   Tiramisu",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Divider(),
            ],
          )),
    );
  }
}
