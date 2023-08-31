
import 'package:flutter/material.dart';

class Rolls extends StatefulWidget {
  const Rolls({super.key});

  @override
  State<Rolls> createState() => _RollsStat();
}

class _RollsStat extends State<Rolls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spring Rolls"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/rolls.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Spring Rolls",style: TextStyle(
                fontSize: 25
              ),),
              SizedBox(
                height: 10,
              ),
              Text(
                    "Spring Rolls:\n\n"

"• Prepare a filling by sautéing shredded vegetables (cabbage, carrots, bell peppers) with cooked minced meat or shrimp.\n\n"
"• Season the filling with soy sauce, oyster sauce, and sesame oil.\n\n"
"• Lay out spring roll wrappers, spoon in the filling, and roll tightly, sealing the edges with a cornstarch-water paste.\n\n"
"• Deep fry the spring rolls until golden and crispy.\n\n"
"• Serve with sweet chili sauce or soy sauce for dipping.\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
