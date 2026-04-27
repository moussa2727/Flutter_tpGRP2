class FoodCategory {
  final String name;
  final int numberOfRestaurants;
  final String imageUrl;

  const FoodCategory({
    required this.name,
    required this.numberOfRestaurants,
    required this.imageUrl,
  });
}

final List<FoodCategory> categories = [
  const FoodCategory(
    name: 'tacos',
    numberOfRestaurants: 24,
    imageUrl: 'assets/tacos.webp',
  ),
  const FoodCategory(
    name: 'cookies',
    numberOfRestaurants: 56,
    imageUrl: 'assets/cookies.webp',
  ),
  const FoodCategory(
    name: 'fromage',
    numberOfRestaurants: 38,
    imageUrl: 'assets/fromage.jfif',
  ),
  const FoodCategory(
    name: 'tomate',
    numberOfRestaurants: 19,
    imageUrl: 'assets/tomate.webp',
  ),
];