
import 'package:flutter/material.dart';

class Pizza extends StatefulWidget {
  const Pizza({super.key});

  @override
  State<Pizza> createState() => _PizzaStat();
}

class _PizzaStat extends State<Pizza> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Margheritta Pizza"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/pizza.jpeg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Margheritta Pizza",style: TextStyle(
                fontSize: 25
              ),),
              SizedBox(
                height: 10,
              ),
              Text(
                    "Margherita Pizza:\n\n"

"• Roll out pizza dough and spread tomato sauce over it.\n\n"
"• Top with sliced fresh mozzarella cheese and fresh basil leaves.\n\n"
"• Drizzle with olive oil and sprinkle with salt.\n\n"
"• Bake in a preheated oven until the crust is golden and the cheese is melted and bubbly.\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
