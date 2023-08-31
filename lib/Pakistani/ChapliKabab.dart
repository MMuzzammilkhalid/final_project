import 'package:flutter/material.dart';

class ChapliKabab extends StatefulWidget {
  const ChapliKabab({super.key});

  @override
  State<ChapliKabab> createState() => _ChapliKababStat();
}

class _ChapliKababStat extends State<ChapliKabab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChapliKabab"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/chapliKabab.jpeg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "ChapliKabab",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Chapli Kebab:\n\n"
                  "• Mix 500g minced meat (beef/chicken) with chopped onions, tomatoes, green chilies, coriander, cumin, and crushed red chili flakes.\n\n"
                  "• Add an egg to bind the mixture and form into flat round patties.\n\n"
                  "• Heat oil in a pan and shallow fry the kebabs until browned on both sides.\n\n"
                  "• Serve with naan, yogurt sauce, and salad.\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
