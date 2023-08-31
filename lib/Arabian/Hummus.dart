
import 'package:flutter/material.dart';

class Hummus extends StatefulWidget {
  const Hummus({super.key});

  @override
  State<Hummus> createState() => _HummusStat();
}

class _HummusStat extends State<Hummus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hummus"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/hummus.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Hummus",style: TextStyle(
                fontSize: 25
              ),),
              SizedBox(
                height: 10,
              ),
              Text(
                    "Hummus:\n\n"

"• Blend 1 can of chickpeas (drained), 1/4 cup of tahini, 2-3 garlic cloves, 3 tbsp of lemon juice, and salt in a food processor.\n\n"
"• Gradually add 2-3 tbsp of olive oil while blending until the mixture becomes smooth.\n\n"
"• Adjust seasoning and consistency with more lemon juice, olive oil, or water.\n\n"
"• Serve hummus drizzled with olive oil, sprinkled with paprika, and accompanied by pita bread.\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
