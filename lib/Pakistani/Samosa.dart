
import 'package:flutter/material.dart';

class Samosa extends StatefulWidget {
  const Samosa({super.key});

  @override
  State<Samosa> createState() => _SamosaStat();
}

class _SamosaStat extends State<Samosa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Samosa"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/samosa.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Samosa",style: TextStyle(
                fontSize: 25
              ),),
              SizedBox(
                height: 10,
              ),
              Text(
                    "Samosas:\n\n"

"• Prepare the filling by sautéing onions, ginger, and garlic. Add minced meat (optional), peas, and spices.\n\n"
"• Mash boiled potatoes and mix them with the cooked meat and peas mixture.\n\n"
"• Roll out samosa dough into triangles. Fill with the mixture and seal the edges with water.\n\n"
"• Deep fry the samosas until they turn golden and crispy.\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
