import 'package:flutter/material.dart';

class Nihari extends StatefulWidget {
  const Nihari({super.key});

  @override
  State<Nihari> createState() => _NihariState();
}

class _NihariState extends State<Nihari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nihari"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/Nehari.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Nihari",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Nihari:\n\n"
                  "• Marinate 1 kg of beef or mutton chunks with ginger-garlic paste, red chili powder, and turmeric for an hour.\n\n"
                  "• Heat ghee in a pot, add meat and brown it."
                  "• Add sliced onions, spices (coriander, cumin, cinnamon, cardamom), and cook until onions are golden.\n\n"
                  "• Add water to cover the meat and simmer on low heat for several hours until the meat is tender.\n\n"
                  "• Dissolve wheat flour in water and add it to the pot to thicken the gravy. Cook for an additional 30 minutes.\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
