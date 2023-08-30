import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mamas_recipe/personalList.dart';
import 'package:mamas_recipe/personalRecipes.dart';

class AddRecipeScreen extends StatefulWidget {
  final CollectionReference recipesCollection;

  AddRecipeScreen({required this.recipesCollection});

  @override
  _AddRecipeScreenState createState() => _AddRecipeScreenState();
}

class _AddRecipeScreenState extends State<AddRecipeScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _recipeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Recipe'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Recipe Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a recipe name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _recipeController,
                maxLines: 5,
                decoration: InputDecoration(labelText: 'Recipe Details'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter recipe details';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    final name = _nameController.text;
                    final recipe = _recipeController.text;

                    try {
                      await widget.recipesCollection.add({
                        'name': name,
                        'recipe': recipe,
                      });
                      Navigator.pop(context);
                    } catch (e) {
                      print('Error adding recipe: $e');
                    }
                  }
                },
                child: Text('Add Recipe'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
