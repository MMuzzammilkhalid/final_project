
import 'package:flutter/material.dart';

class King extends StatefulWidget {
  const King({super.key});

  @override
  State<King> createState() => _KingStat();
}

class _KingStat extends State<King> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("King Pao Shrimp"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/king.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("King Pao Shrimp",style: TextStyle(
                fontSize: 25
              ),),
              SizedBox(
                height: 10,
              ),
              Text(
                    "King Pao Shrimp:\n\n"

"• Marinate shrimp with soy sauce, rice wine, and cornstarch.\n\n"
"• In a wok, heat oil and stir-fry marinated shrimp until pink. Remove from the wok.\n\n"
"• Sauté chopped garlic, ginger, and dried red chili peppers until fragrant.\n\n"
"• Add peanuts and diced bell peppers, then return the shrimp to the wok.\n\n"
"• Stir in a sauce made from soy sauce, hoisin sauce, rice vinegar, and sugar. Cook until the sauce coats the shrimp and vegetables.\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
