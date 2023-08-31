
import 'package:flutter/material.dart';

class VegBiryani extends StatefulWidget {
  const VegBiryani({super.key});

  @override
  State<VegBiryani> createState() => _VegBiryaniStat();
}

class _VegBiryaniStat extends State<VegBiryani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vegetable Biryani"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/vegetableBiryani.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Vegetable Biryani",style: TextStyle(
                fontSize: 25
              ),),
              SizedBox(
                height: 10,
              ),
              Text(
                    "Vegetable Biryani:\n\n"

"• Parboil basmati rice with whole spices until slightly cooked. Drain and set aside.\n\n"
"• In a pot, sauté sliced onions, ginger-garlic paste, and green chilies.\n\n"
"• Add mixed vegetables, spices (coriander, cumin, garam masala), and sauté.\n\n"
"• Layer the vegetables and rice in the pot. Top with fried onions, saffron milk, and chopped mint/coriander.\n\n"
"• Cover and cook on low heat until the rice is fully cooked.\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
