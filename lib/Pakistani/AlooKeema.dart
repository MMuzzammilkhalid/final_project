
import 'package:flutter/material.dart';

class AlooKeema extends StatefulWidget {
  const AlooKeema({super.key});

  @override
  State<AlooKeema> createState() => _AlooKeemaStat();
}

class _AlooKeemaStat extends State<AlooKeema> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlooKeema"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/AloKema.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("AlooKeema",style: TextStyle(
                fontSize: 25
              ),),
              SizedBox(
                height: 10,
              ),
              Text(
                    "Aloo Keema:\n\n"

"• In a pan, heat oil and sauté sliced onions until golden.\n\n"
"• Add ginger-garlic paste, minced meat, and cook until the meat changes color.\n\n"
"• Add spices (coriander, cumin, red chili powder), chopped tomatoes, and cook until the tomatoes soften.\n\n"
"• Add chopped potatoes, water, and simmer until the potatoes are tender and the meat is cooked through.\n\n"
"• Garnish with fresh coriander and green chilies before serving\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
