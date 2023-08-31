
import 'package:flutter/material.dart';

class Kabsa extends StatefulWidget {
  const Kabsa({super.key});

  @override
  State<Kabsa> createState() => _KabsaStat();
}

class _KabsaStat extends State<Kabsa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kabsa"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/kabsa.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Kabsa",style: TextStyle(
                fontSize: 25
              ),),
              SizedBox(
                height: 10,
              ),
              Text(
                    "Kabsa:\n\n"

"• Sauté sliced onions in a pot until golden.\n\n"
"• Add diced chicken or lamb and brown the meat.\n\n"
"• Stir in Arabic spices like cardamom, cinnamon, cloves, and bay leaves.\n\n"
"• Add basmati rice, water, and tomato paste. Cover and simmer until the rice is cooked.\n\n"
"• Garnish with roasted nuts and serve Kabsa with salad and yogurt.\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
