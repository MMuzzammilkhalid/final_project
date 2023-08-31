
import 'package:flutter/material.dart';

class Lasagana extends StatefulWidget {
  const Lasagana({super.key});

  @override
  State<Lasagana> createState() => _LasaganaStat();
}

class _LasaganaStat extends State<Lasagana> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lasagana"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/lasagana.jpeg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Lasagana",style: TextStyle(
                fontSize: 25
              ),),
              SizedBox(
                height: 10,
              ),
              Text(
                    "Lasagna:\n\n"

"• Brown ground beef in a pan. Add diced onions and garlic, then tomato sauce and herbs.\n\n"
"• Prepare a bechamel sauce by melting butter, adding flour, then milk. Cook until thickened.\n\n"
"• Layer cooked lasagna noodles, meat sauce, bechamel sauce, and grated mozzarella cheese in a baking dish.\n\n"
"• Repeat the layers and finish with a layer of cheese on top.\n\n"
"• Bake in the oven until the cheese is melted and bubbly.\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
