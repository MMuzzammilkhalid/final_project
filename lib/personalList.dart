import 'package:flutter/material.dart';

class RecipeListScreen extends StatelessWidget {
  final List<Map<String, String>> recipeList;

  RecipeListScreen({required this.recipeList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe List'),
      ),
      body: ListView.builder(
        itemCount: recipeList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipeList[index]['name'] ?? ''),
            subtitle: Text(recipeList[index]['recipe'] ?? ''),
          );
        },
      ),
    );
  }
}
