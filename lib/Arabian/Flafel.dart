
import 'package:flutter/material.dart';

class Flafel extends StatefulWidget {
  const Flafel({super.key});

  @override
  State<Flafel> createState() => _FlafelStat();
}

class _FlafelStat extends State<Flafel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flafel"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/falafel.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Flafel",style: TextStyle(
                fontSize: 25
              ),),
              SizedBox(
                height: 10,
              ),
              Text(
                    "Falafel:\n\n"

"• Soak 1 cup of dried chickpeas overnight. Drain and rinse.\n\n"
"• Blend chickpeas with chopped onions, garlic, parsley, coriander, cumin, and a pinch of baking soda.\n\n"
"• Form the mixture into small patties and deep fry until golden and crispy.\n\n"
"• Serve falafel in pita bread pockets with tahini sauce, chopped vegetables, and pickles\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
