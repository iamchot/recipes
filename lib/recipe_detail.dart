import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:receipes/Model/ingredient.dart';
import 'package:receipes/Model/recipe.dart';

class RecipeDetail extends StatefulWidget {

  final Recipe recipe;
  RecipeDetail({super.key, required this.recipe});

  @override
  State<RecipeDetail> createState(){
    return _RecipeDetailState();
  }
}

class _RecipeDetailState extends State<RecipeDetail> {
  int sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recipe Detail"),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(widget.recipe.imgUrl),
            SizedBox(height: 16),
            Text(
              widget.recipe.imgLabel,
              style: GoogleFonts.poppins(
                  fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              widget.recipe.description,
              style: TextStyle(fontSize: 16),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
                  final double adjustedQuantity = ingredient.quantity * sliderVal;

                  String formatQuantity(double q) {
                    if (q == q.roundToDouble()) return q.toInt().toString();
                    if ((q * 10) == (q * 10).roundToDouble()) return q.toStringAsFixed(1);
                    return q.toStringAsFixed(2);
                  }

                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 8.0),
                    child: Text(
                      '${formatQuantity(adjustedQuantity)} ${ingredient.unit} ${ingredient.name}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Slider(
                min: 1,
                max: 10,
                divisions: 10,
                label: '${sliderVal} servings',
                value: sliderVal.toDouble(),
                
                onChanged: (newValue) {
                  setState(() {
                    sliderVal = newValue.round();
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
