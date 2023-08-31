
import 'package:flutter/material.dart';

class Spaghetti extends StatefulWidget {
  const Spaghetti({super.key});

  @override
  State<Spaghetti> createState() => _SpaghettiStat();
}

class _SpaghettiStat extends State<Spaghetti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spaghetti Carbonara"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/spaghetti.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Spaghetti Carbonara",style: TextStyle(
                fontSize: 25
              ),),
              SizedBox(
                height: 10,
              ),
              Text(
                    "Spaghetti Carbonara:\n\n"

"• Cook spaghetti according to package instructions. Reserve some pasta water.\n\n"
"• In a pan, sauté diced pancetta or bacon until crispy. Remove from the pan.\n\n"
"• In a bowl, whisk together eggs, grated Parmesan cheese, black pepper, and a splash of pasta water.\n\n"
"• Drain the cooked pasta and add it to the egg mixture. Toss to coat the pasta and create a creamy sauce.\n\n"
"• Add the crispy pancetta and toss again. Serve with extra Parmesan on top.\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
