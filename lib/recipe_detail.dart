import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:receipes/Model/recipe.dart';

class RecipeDetail extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetail({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) { {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recipe Detail"),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(recipe.imgUrl),
            SizedBox(height: 16),
            Text(
              recipe.imgLabel,
              style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              recipe.description,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
}