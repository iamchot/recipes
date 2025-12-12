class Recipe {
  final String imgUrl; // URL/path for the image asset
  final String imgLabel; // Label for the image
  final String description; // Description of the recipe
  Recipe(this.imgUrl, this.imgLabel , [this.description = 'Delicious recipe']);

  static List<Recipe> samples = [
    Recipe('assets/images/Pad Thai.webp', 'Pad Thai', 'A classic Thai noodle dish with a perfect balance of sweet, sour, and savory flavors.'),
    Recipe('assets/images/Thai green fish curry.webp', 'Thai green fish curry', 'A spicy and aromatic curry made with fresh green chilies, coconut milk, and tender fish pieces.'),
    Recipe('assets/images/Thai pumpkin curry.webp', 'Thai pumpkin curry', 'A creamy and mildly spiced curry featuring pumpkin, coconut milk, and traditional Thai herbs.'),
  ];
}