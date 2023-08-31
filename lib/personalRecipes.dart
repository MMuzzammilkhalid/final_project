import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'add.dart';
import 'personalList.dart';

class RecipeApp extends StatefulWidget {
  const RecipeApp({super.key});

  @override
  _RecipeAppState createState() => _RecipeAppState();
}

class _RecipeAppState extends State<RecipeApp> {
  late CollectionReference _recipesCollection;

  @override
  void initState() {
    super.initState();
    _recipesCollection = FirebaseFirestore.instance
        .collection('recipes'); // Replace 'recipes' with your collection name
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Recipes'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        AddRecipeScreen(recipesCollection: _recipesCollection),
                  ),
                );
              },
              child: Text('Add Recipe'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        RecipeListScreen(recipesCollection: _recipesCollection),
                  ),
                );
              },
              child: Text('View Recipes'),
            ),
          ],
        ),
      ),
    );
  }
}
