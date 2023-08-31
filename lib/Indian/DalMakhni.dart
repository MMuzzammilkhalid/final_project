
import 'package:flutter/material.dart';

class DalMakhni extends StatefulWidget {
  const DalMakhni({super.key});

  @override
  State<DalMakhni> createState() => _DalMakhniStat();
}

class _DalMakhniStat extends State<DalMakhni> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dal Makhni"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/dalMakhni.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Dal Makhni",style: TextStyle(
                fontSize: 25
              ),),
              SizedBox(
                height: 10,
              ),
              Text(
                    "Dal Makhani:\n\n"

"• Soak black lentils and kidney beans overnight. Pressure cook them until soft.\n\n"
"• In a pan, heat butter, add cumin seeds, and let them splutter.\n\n"
"• Add chopped onions, ginger-garlic paste, and sauté until onions turn golden.\n\n"
"• Add tomatoes, spices (red chili powder, garam masala), and cook until tomatoes are well-cooked.\n\n"
"• Add the cooked lentils and beans along with cream and simmer on low heat.\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
