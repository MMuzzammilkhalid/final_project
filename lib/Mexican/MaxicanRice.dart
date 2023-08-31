
import 'package:flutter/material.dart';

class MaxicanRice extends StatefulWidget {
  const MaxicanRice({super.key});

  @override
  State<MaxicanRice> createState() => _MaxicanRiceStat();
}

class _MaxicanRiceStat extends State<MaxicanRice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Maxican Rice"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/mexicanrice.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Maxican Rice",style: TextStyle(
                fontSize: 25
              ),),
              SizedBox(
                height: 10,
              ),
              Text(
                    "Mexican Rice (Arroz Rojo):\n\n"

"• Sauté finely chopped onions and garlic in oil until translucent.\n\n"
"• Add rice and cook until lightly toasted.\n\n"
"• Stir in tomato sauce, chicken broth, and spices (cumin, oregano).\n\n"
"• Cover and simmer until the rice is cooked and the liquid is absorbed.\n\n"
"• Fluff the rice with a fork and garnish with chopped cilantro.\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
