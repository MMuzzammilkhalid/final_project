
import 'package:flutter/material.dart';

class ChickenCurry extends StatefulWidget {
  const ChickenCurry({super.key});

  @override
  State<ChickenCurry> createState() => _ChickenCurryStat();
}

class _ChickenCurryStat extends State<ChickenCurry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chicken Curry"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/chickenCury.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Chicken Curry",style: TextStyle(
                fontSize: 25
              ),),
              SizedBox(
                height: 10,
              ),
              Text(
                    "Chicken Curry:\n\n"

"• Heat oil in a pan, add cumin seeds, and let them splutter.\n\n"
"• Add chopped onions and sauté until golden brown.\n\n"
"• Stir in ginger-garlic paste, tomatoes, and spices (coriander, cumin, turmeric, red chili powder).\n\n"
"• Add chicken pieces and sauté until they start to brown\n\n"
"• Pour in water, cover, and simmer until the chicken is tender and the gravy thickens.\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
