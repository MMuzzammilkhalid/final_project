
import 'package:flutter/material.dart';

class PaneerTikka extends StatefulWidget {
  const PaneerTikka({super.key});

  @override
  State<PaneerTikka> createState() => _PaneerTikkaStat();
}

class _PaneerTikkaStat extends State<PaneerTikka> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Paneer Tikka"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/paneerTikka.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Paneer Tikka",style: TextStyle(
                fontSize: 25
              ),),
              SizedBox(
                height: 10,
              ),
              Text(
                    "Paneer Tikka:\n\n"

"• Cut paneer (Indian cottage cheese) into cubes and marinate with yogurt, red chili powder, turmeric, garam masala, and ginger-garlic paste.\n\n"
"• Thread the marinated paneer onto skewers along with bell peppers and onions.\n\n"
"• Grill in a preheated oven or on a stovetop griddle until charred and cooked through.\n\n"
"• Serve with mint chutney and lemon wedges.\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
