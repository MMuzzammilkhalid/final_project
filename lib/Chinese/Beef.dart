
import 'package:flutter/material.dart';

class Beef extends StatefulWidget {
  const Beef({super.key});

  @override
  State<Beef> createState() => _BeefStat();
}

class _BeefStat extends State<Beef> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Beef with Brocali"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/beef.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Beef with Brocali",style: TextStyle(
                fontSize: 25
              ),),
              SizedBox(
                height: 10,
              ),
              Text(
                    "Beef with Broccoli:\n\n"

"• Marinate thinly sliced beef with soy sauce, oyster sauce, and cornstarch.\n\n"
"• Blanch broccoli florets in boiling water, then transfer to ice water to retain their color.\n\n"
"• In a wok, heat oil and stir-fry marinated beef until browned. Remove from the wok.\n\n"
"• Sauté minced garlic and ginger, then add the blanched broccoli.\n\n"
"• Return the beef to the wok and add a sauce made from soy sauce, oyster sauce, and cornstarch slurry. Stir-fry until the sauce thickens.\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
