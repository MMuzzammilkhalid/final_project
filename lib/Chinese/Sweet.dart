
import 'package:flutter/material.dart';

class Sweet extends StatefulWidget {
  const Sweet({super.key});

  @override
  State<Sweet> createState() => _SweetStat();
}

class _SweetStat extends State<Sweet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sweet and Sour Chicken"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/sweet.jpeg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Sweet and Sour Chicken",style: TextStyle(
                fontSize: 25
              ),),
              SizedBox(
                height: 10,
              ),
              Text(
                    "Sweet and Sour Chicken:\n\n"

"• Cut boneless chicken into bite-sized pieces and marinate with salt, pepper, and soy sauce.\n\n"
"• Coat the chicken with cornstarch and deep fry until golden brown.\n\n"
"• In a separate pan, sauté bell peppers, onions, and pineapple chunks.\n\n"
"• Make the sweet and sour sauce by mixing ketchup, vinegar, sugar, soy sauce, and cornstarch slurry.\n\n"
"• Combine the fried chicken, sautéed vegetables, and sweet and sour sauce. Cook until the sauce thickens and coats the ingredients.\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
