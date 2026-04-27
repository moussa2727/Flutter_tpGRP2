class Ingredient {
  String name;
  double quantity;
  String measure;

  Ingredient(this.name, this.quantity, this.measure);
}

class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;

  Recipe(this.label, this.imageUrl, this.servings, this.ingredients);

  static List<Recipe> samples = [
    Recipe(
      'Tomato Soup',
      'assets/tomate.webp',
      1,
      [
        Ingredient('Tomato Soup', 1, 'can'),
      ],
    ),
    Recipe(
      'Grilled Cheese',
      'assets/fromage.jfif',
      1,
      [
        Ingredient('Cheese', 2, 'slices'),
        Ingredient('Bread', 2, 'slices'),
      ],
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'assets/cookies.webp',
      24,
      [
        Ingredient('flour', 4, 'cups'),
        Ingredient('sugar', 2, 'cups'),
        Ingredient('chocolate chips', 0.5, 'cups'),
      ],
    ),
    Recipe(
      'Taco Salad',
      'assets/tacos.webp',
      1,
      [
        Ingredient('nachos', 4, 'oz'),
        Ingredient('taco meat', 3, 'oz'),
        Ingredient('cheese', 0.5, 'cup'),
        Ingredient('chopped tomatoes', 0.25, 'cup'),
      ],
    ),
  ];
}