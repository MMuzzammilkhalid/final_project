import 'package:flutter/material.dart';
import 'package:mamas_recipe/personalRecipes.dart';

import 'home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  List screens = [
    Home(
        // name: "nameController.text",
        // email: "emailController.text",
        // password: "passwordController.text"
        ),
    RecipeApp()
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Personal Recipes',
          ),
        ],
        currentIndex: index,
        onTap: (int givenIndex) {
          setState(() {
            index = givenIndex;
          });
        },
      ),
      body: screens[index],
    );
  }
}
