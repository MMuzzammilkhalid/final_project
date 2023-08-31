
import 'package:flutter/material.dart';

class PalakPaneer extends StatefulWidget {
  const PalakPaneer({super.key});

  @override
  State<PalakPaneer> createState() => _PalakPaneerStat();
}

class _PalakPaneerStat extends State<PalakPaneer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Palak Paneer"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/palakPaneer.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Palak Paneer",style: TextStyle(
                fontSize: 25
              ),),
              SizedBox(
                height: 10,
              ),
              Text(
                    "Palak Paneer:\n\n"

"• Blanch spinach leaves and blend into a smooth puree.\n\n"
"• In a pan, heat oil, add cumin seeds, and let them splutter.\n\n"
"• Sauté onions until golden, then add ginger-garlic paste and tomato puree.\n\n"
"• Add spices (coriander, cumin, garam masala), spinach puree, and paneer cubes.\n\n"
"• Simmer until the flavors meld, and the paneer is heated through.\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
