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
  final List<Map<String, String>> _recipeList = [];
  // late final CollectionReference recipesCollection;

  late CollectionReference _recipesCollection;

  @override
  void initState() {
    super.initState();
    _recipesCollection = FirebaseFirestore.instance
        .collection('recipes'); // Replace 'recipes' with your collection name
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe App'),
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
                    builder: (context) => AddRecipeScreen(
                      recipeList: _recipeList,
                      recipesCollection: _recipesCollection,
                    ),
                  ),
                );
              },
              child: Text('Add Recipe'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        RecipeListScreen(recipeList: _recipeList),
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
