
import 'package:flutter/material.dart';

class Pastor extends StatefulWidget {
  const Pastor({super.key});

  @override
  State<Pastor> createState() => _PastorStat();
}

class _PastorStat extends State<Pastor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tacos al Pastor"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/pastor.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Tacos al Pastor",style: TextStyle(
                fontSize: 25
              ),),
              SizedBox(
                height: 10,
              ),
              Text(
                    "Tacos al Pastor:\n\n"

"• Marinate thinly sliced pork in a mixture of pineapple juice, achiote paste, garlic, and spices.\n\n"
"• Skewer the marinated pork and roast on a vertical spit (trompo) until cooked and slightly crispy.\n\n"
"• Warm corn tortillas and serve the sliced pork in tacos with diced onions, cilantro, pineapple, and salsa.\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
