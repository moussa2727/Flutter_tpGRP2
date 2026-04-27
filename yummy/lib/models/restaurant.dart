class Restaurant {
  final String name;
  final String attributes;
  final String imageUrl;

  const Restaurant({
    required this.name,
    required this.attributes,
    required this.imageUrl,
  });
}

final List<Restaurant> restaurants = [
  const Restaurant(
    name: 'The Golden Spoon',
    attributes: r'Italian • Fine Dining • $$$',
    imageUrl: 'assets/fromage.jfif',
  ),
  const Restaurant(
    name: 'Burger Paradise',
    attributes: r'American • Fast Food • $$',
    imageUrl: 'assets/tacos.webp',
  ),
  const Restaurant(
    name: 'Sushi Master',
    attributes: r'Japanese • Sushi Bar • $$$',
    imageUrl: 'assets/tomate.webp',
  ),
  Restaurant(
    name: 'Green Garden Cafe',
    attributes: r'Vegetarian • Organic • $$',
    imageUrl: 'assets/cookies.webp',
  ),
];