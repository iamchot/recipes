class Recipe {
  final String imgUrl; // URL/path for the image asset
  final String imgLabel; // Label for the image

  Recipe(this.imgUrl, this.imgLabel);

  static List<Recipe> samples = [
    Recipe('assets/images/Pad Thai.webp', 'Pad Thai'),
    Recipe('assets/images/Thai green fish curry.webp', 'Thai green fish curry'),
    Recipe('assets/images/Thai pumpkin curry.webp', 'Thai pumpkin curry'),
  ];
}