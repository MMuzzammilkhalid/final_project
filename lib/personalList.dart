import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class RecipeListScreen extends StatelessWidget {
  final CollectionReference recipesCollection;

  RecipeListScreen({required this.recipesCollection});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe List'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: recipesCollection.snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final recipes = snapshot.data!.docs;
            List<Recipe> recipeList = recipes.map((recipe) {
              final data = recipe.data() as Map<String, dynamic>;
              return Recipe(
                id: recipe.id,
                name: data['name'] ?? '',
                recipe: data['recipe'] ?? '',
              );
            }).toList();

            return ListView.builder(
              itemCount: recipeList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(recipeList[index].name),
                  subtitle: Text(recipeList[index].recipe),
                );
              },
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

class Recipe {
  final String id;
  final String name;
  final String recipe;

  Recipe({required this.id, required this.name, required this.recipe});
}
