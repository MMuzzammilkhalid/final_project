
import 'package:flutter/material.dart';

class Rice extends StatefulWidget {
  const Rice({super.key});

  @override
  State<Rice> createState() => _RiceStat();
}

class _RiceStat extends State<Rice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fried Rice"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/rice.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Fried Rice",style: TextStyle(
                fontSize: 25
              ),),
              SizedBox(
                height: 10,
              ),
              Text(
                    "Fried Rice:\n\n"

"• Cook rice and let it cool completely. Cold rice works best for fried rice.\n\n"
"• In a wok, heat oil and sauté diced vegetables (carrots, peas, bell peppers) until slightly tender.\n\n"
"• Push the vegetables to the side and scramble eggs in the empty space.\n\n"
"• Add the cooled rice to the wok and stir-fry, breaking up any clumps.\n\n"
"• Season with soy sauce, oyster sauce, and sesame oil. Add cooked diced meat (chicken, pork, shrimp) if desired.\n\n"
"• Stir-fry until everything is heated through and the flavors meld.\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
