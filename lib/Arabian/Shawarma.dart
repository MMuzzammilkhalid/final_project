
import 'package:flutter/material.dart';

class Shawarma extends StatefulWidget {
  const Shawarma({super.key});

  @override
  State<Shawarma> createState() => _ShawarmaStat();
}

class _ShawarmaStat extends State<Shawarma> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shawarma"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/shawarma.jpeg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Shawarma",style: TextStyle(
                fontSize: 25
              ),),
              SizedBox(
                height: 10,
              ),
              Text(
                    "Shawarma:\n\n"

"• Marinate thinly sliced chicken or beef with yogurt, garlic, lemon juice, and Middle Eastern spices.\n\n"
"• Thread marinated meat onto skewers and grill or cook on a vertical rotisserie.\n\n"
"• Slice the cooked meat and serve it wrapped in pita bread with tahini sauce, tomatoes, onions, and pickles.\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
