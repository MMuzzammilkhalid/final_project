
import 'package:flutter/material.dart';

class Risotto extends StatefulWidget {
  const Risotto({super.key});

  @override
  State<Risotto> createState() => _RisottoStat();
}

class _RisottoStat extends State<Risotto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Risotto"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/risotto.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Risotto",style: TextStyle(
                fontSize: 25
              ),),
              SizedBox(
                height: 10,
              ),
              Text(
                    "Risotto:\n\n"

"• Sauté finely chopped onions in butter until translucent.\n\n"
"• Add Arborio rice and cook until the edges are translucent.\n\n"
"• Pour in a splash of white wine and cook until it evaporates.\n\n"
"• Gradually add hot chicken or vegetable broth, stirring frequently until the rice is creamy and cooked.\n\n"
"• Stir in grated Parmesan cheese and season with salt and pepper.\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
