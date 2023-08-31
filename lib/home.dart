import 'package:flutter/material.dart';
import 'package:mamas_recipe/Pakistani/PakList.dart';
import 'package:mamas_recipe/profile.dart';

import 'Arabian/ArabianList.dart';
import 'Chinese/ChineseList.dart';
import 'Indian/IndianList.dart';
import 'Italian/ItalianList.dart';
import 'Mexican/MexicanList.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Image img1 = Image.asset("assets/p1.jpg");
  Image img2 = Image.asset("assets/p2.jpg");
  Image img3 = Image.asset("assets/p3.jpg");
  Image img4 = Image.asset("assets/p4.png");
  Image img5 = Image.asset("assets/p5.jpeg");
  Image img6 = Image.asset("assets/p6.jpeg");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories"),
        actions: [
          GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Profile(),
                      ));
                });
              },
              child: const Icon(Icons.person)),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const PakDishes();
                          },
                        ));
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: MediaQuery.of(context).size.height / 4,
                          decoration: BoxDecoration(
                              border: Border.all(style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: img1.image,
                                  opacity: 0.6,
                                  fit: BoxFit.fill)),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: MediaQuery.of(context).size.width / 7,
                                child: const Text(
                                  "Pakistani Dishes",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              )
                            ],
                          )),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const ArabianDishes();
                          },
                        ));
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: MediaQuery.of(context).size.height / 4,
                          decoration: BoxDecoration(
                              border: Border.all(style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: img2.image,
                                  opacity: 0.6,
                                  fit: BoxFit.fill)),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: MediaQuery.of(context).size.width / 7,
                                child: const Text(
                                  "Arabian Dishes",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const IndianDishes();
                          },
                        ));
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: MediaQuery.of(context).size.height / 4,
                          decoration: BoxDecoration(
                              border: Border.all(style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: img3.image,
                                  opacity: 0.6,
                                  fit: BoxFit.fill)),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: MediaQuery.of(context).size.width / 7,
                                child: const Text(
                                  "Indian Dishes",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              )
                            ],
                          )),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const ChineseDishes();
                          },
                        ));
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: MediaQuery.of(context).size.height / 4,
                          decoration: BoxDecoration(
                              border: Border.all(style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: img4.image,
                                  opacity: 0.6,
                                  fit: BoxFit.fill)),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: MediaQuery.of(context).size.width / 7,
                                child: const Text(
                                  "Chinese Dishes",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const ItalianDishes();
                          },
                        ));
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: MediaQuery.of(context).size.height / 4,
                          decoration: BoxDecoration(
                              border: Border.all(style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: img5.image,
                                  opacity: 0.6,
                                  fit: BoxFit.fill)),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: MediaQuery.of(context).size.width / 7,
                                child: const Text(
                                  "Italian Dishes",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              )
                            ],
                          )),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const MaxicanDishes();
                          },
                        ));
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: MediaQuery.of(context).size.height / 4,
                          decoration: BoxDecoration(
                              border: Border.all(style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: img6.image,
                                  opacity: 0.6,
                                  fit: BoxFit.fill)),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: MediaQuery.of(context).size.width / 7,
                                child: const Text(
                                  "Mexican Dishes",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
