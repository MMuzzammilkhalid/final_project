
import 'package:flutter/material.dart';

class Guacamole extends StatefulWidget {
  const Guacamole({super.key});

  @override
  State<Guacamole> createState() => _GuacamoleStat();
}

class _GuacamoleStat extends State<Guacamole> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Guacamole"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/guacamole.jpeg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Guacamole",style: TextStyle(
                fontSize: 25
              ),),
              SizedBox(
                height: 10,
              ),
              Text(
                    "Guacamole:\n\n"

"• Mash ripe avocados with a fork until creamy but still slightly chunky.\n\n"
"• Add finely chopped red onion, minced garlic, diced tomatoes, chopped cilantro, lime juice, and salt.\n\n"
"• Mix everything together and adjust seasoning to taste.\n\n"
"• Serve guacamole with tortilla chips or as a topping for various dishes.\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
