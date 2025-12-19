import 'ingredient.dart';

class Recipe {
  final String imgUrl; // URL/path for the image asset
  final String imgLabel; // Label for the image
  final String description; // Description of the recipe
  final List<Ingredient> ingredients; // List of ingredients
  Recipe(this.imgUrl, this.imgLabel, [this.description = 'Delicious recipe', this.ingredients = const []]);

  static List<Recipe> samples = [
    Recipe('assets/images/Pad Thai.webp', 'Pad Thai', 'A classic Thai noodle dish with a perfect balance of sweet, sour, and savory flavors.'
    ,[
      Ingredient(name: 'Rice Noodles', quantity: 200.0, unit: 'grams'),
      Ingredient(name: 'Shrimp', quantity: 150.0, unit: 'grams'),
      Ingredient(name: 'Tofu', quantity: 100.0, unit: 'grams'),
      Ingredient(name: 'Bean Sprouts', quantity: 50.0, unit: 'grams'),
      Ingredient(name: 'Peanuts', quantity: 30.0, unit: 'grams'),
      Ingredient(name: 'Eggs', quantity: 2.0, unit: 'pieces'),
      Ingredient(name: 'Tamarind Paste', quantity: 2.0, unit: 'tablespoons'),
      Ingredient(name: 'Fish Sauce', quantity: 2.0, unit: 'tablespoons'),
      Ingredient(name: 'Palm Sugar', quantity: 1.0, unit: 'tablespoon'),
      Ingredient(name: 'Lime', quantity: 1.0, unit: 'piece'),
    ]
    ),

    Recipe('assets/images/Thai green fish curry.webp', 'Thai green fish curry', 'A spicy and aromatic curry made with fresh green chilies, coconut milk, and tender fish pieces.'
    ,[
      Ingredient(name: 'White Fish Fillets', quantity: 300.0, unit: 'grams'),
      Ingredient(name: 'Coconut Milk', quantity: 400.0, unit: 'ml'),
      Ingredient(name: 'Green Curry Paste', quantity: 3.0, unit: 'tablespoons'),
      Ingredient(name: 'Thai Eggplants', quantity: 100.0, unit: 'grams'),
      Ingredient(name: 'Bamboo Shoots', quantity: 100.0, unit: 'grams'),
      Ingredient(name: 'Fresh Basil Leaves', quantity: 20.0, unit: 'grams'),
      Ingredient(name: 'Fish Sauce', quantity: 2.0, unit: 'tablespoons'),
      Ingredient(name: 'Palm Sugar', quantity: 1.0, unit: 'tablespoon'),
      Ingredient(name: 'Lime Leaves', quantity: 5.0, unit: 'pieces'),
    ]
    ),

    Recipe('assets/images/Thai pumpkin curry.webp', 'Thai pumpkin curry', 'A creamy and mildly spiced curry featuring pumpkin, coconut milk, and traditional Thai herbs.'
    ,[
      Ingredient(name: 'Pumpkin', quantity: 300.0, unit: 'grams'),
      Ingredient(name: 'Coconut Milk', quantity: 400.0, unit: 'ml'),
      Ingredient(name: 'Red Curry Paste', quantity: 2.0, unit: 'tablespoons'),
      Ingredient(name: 'Onion', quantity: 1.0, unit: 'piece'),
      Ingredient(name: 'Garlic', quantity: 3.0, unit: 'cloves'),
      Ingredient(name: 'Fish Sauce', quantity: 2.0, unit: 'tablespoons'),
      Ingredient(name: 'Palm Sugar', quantity: 1.0, unit: 'tablespoon'),
      Ingredient(name: 'Fresh Basil Leaves', quantity: 20.0, unit: 'grams'),
    ]
    ),
  ];
}

