
import 'package:flutter/material.dart';

class Mansaf extends StatefulWidget {
  const Mansaf({super.key});

  @override
  State<Mansaf> createState() => _MansafStat();
}

class _MansafStat extends State<Mansaf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mansaf"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/mansaf.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Mansaf",style: TextStyle(
                fontSize: 25
              ),),
              SizedBox(
                height: 10,
              ),
              Text(
                    "Mansaf:\n\n"

"• Cook 1 kg of lamb or chicken in a pot with onions, spices, and water until tender.\n\n"
"• Prepare jameed (dried yogurt) by soaking it in water until it softens.\n\n"
"• Layer cooked rice on a serving platter, top with cooked meat, and ladle jameed sauce over the dish.\n\n"
"• Garnish with toasted almonds and pine nuts.\n\n"
"• Traditionally, eat Mansaf using your hands and torn pieces of flatbread.\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
