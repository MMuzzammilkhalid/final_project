
import 'package:flutter/material.dart';

class Tiramisu extends StatefulWidget {
  const Tiramisu({super.key});

  @override
  State<Tiramisu> createState() => _TiramisuStat();
}

class _TiramisuStat extends State<Tiramisu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tiramisu"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/tiramisu.jpeg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Tiramisu",style: TextStyle(
                fontSize: 25
              ),),
              SizedBox(
                height: 10,
              ),
              Text(
                    "Tiramisu:\n\n"

"• Beat egg yolks and sugar until pale and creamy.\n\n"
"• In a separate bowl, whip mascarpone cheese until smooth and fold it into the egg yolk mixture.\n\n"
"• Dip ladyfinger biscuits in strong coffee or coffee liqueur and arrange a layer in a serving dish.\n\n"
"• Spread a layer of the mascarpone mixture over the biscuits.\n\n"
"• Repeat layers and finish with a dusting of cocoa powder on top.\n\n"
"• Refrigerate for a few hours before serving.\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
