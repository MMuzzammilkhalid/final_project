
import 'package:flutter/material.dart';

class Enchiladas extends StatefulWidget {
  const Enchiladas({super.key});

  @override
  State<Enchiladas> createState() => _EnchiladasStat();
}

class _EnchiladasStat extends State<Enchiladas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enchiladas"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/enchiladas.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Enchiladas",style: TextStyle(
                fontSize: 25
              ),),
              SizedBox(
                height: 10,
              ),
              Text(
                    "Enchiladas:\n\n"

"• Warm corn tortillas and fill them with shredded cooked chicken, cheese, and diced onions.\n\n"
"• Roll the tortillas and place them seam-side down in a baking dish.\n\n"
"• Pour enchilada sauce over the rolled tortillas and top with more cheese.\n\n"
"• Bake in the oven until the cheese is melted and bubbly.\n\n"
"• Garnish with chopped cilantro and serve with sour cream.\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
