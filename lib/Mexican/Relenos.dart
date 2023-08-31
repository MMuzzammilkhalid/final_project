
import 'package:flutter/material.dart';

class Relenos extends StatefulWidget {
  const Relenos({super.key});

  @override
  State<Relenos> createState() => _RelenosStat();
}

class _RelenosStat extends State<Relenos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chiless Relenos"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.asset("assets/relenos.jpeg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Chiless Relenos",style: TextStyle(
                fontSize: 25
              ),),
              SizedBox(
                height: 10,
              ),
              Text(
                    "Chiles Rellenos:\n\n"

"• Roast and peel poblano peppers, leaving the stems intact.\n\n"
"• Stuff the peppers with a mixture of cheese, minced meat, or beans.\n\n"
"• Dredge the stuffed peppers in flour, dip them in beaten egg whites, and deep fry until golden.\n\n"
"• Serve the chiles rellenos with tomato sauce or salsa.\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
