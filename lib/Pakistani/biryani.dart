import 'package:flutter/material.dart';

class Biryani extends StatefulWidget {
  const Biryani({super.key});

  @override
  State<Biryani> createState() => _BiryaniState();
}

class _BiryaniState extends State<Biryani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Biryani"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/Biryani.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Biryani",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Chicken Biryani:\n\n"
                  "• Marinate 1 kg of chicken pieces in yogurt, ginger-garlic paste, and biryani spices for an hour.\n\n"
                  "• Wash and soak 2 cups of basmati rice for 30 minutes.\n\n"
                  "• Parboil the rice with whole spices (cinnamon, cardamom, cloves) until slightly cooked.\n\n"
                  "• Layer the marinated chicken and parboiled rice in a pot. Top with fried onions, saffron milk, and chopped mint/coriander.\n\n"
                  "• Cover and cook on low heat for 30-40 minutes until the chicken is cooked and rice is fully done.\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
