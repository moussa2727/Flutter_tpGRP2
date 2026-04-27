import 'package:flutter/material.dart';
import 'components/theme_button.dart';
import 'components/color_button.dart';
import 'components/category_card.dart';
import 'components/post_card.dart';
import 'components/restaurant_landscape_card.dart';
import 'constants.dart';
import 'models/food_category.dart';
import 'models/post.dart';
import 'models/restaurant.dart';

class Home extends StatefulWidget {
  final void Function(bool) changeTheme;
  final void Function(int) changeColor;
  final ColorSelection colorSelected;

  const Home({
    super.key,
    required this.changeTheme,
    required this.changeColor,
    required this.colorSelected,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tab = 0;

  final List<NavigationDestination> appBarDestinations = const [
    NavigationDestination(
      icon: Icon(Icons.category_outlined),
      label: 'Category',
      selectedIcon: Icon(Icons.category),
    ),
    NavigationDestination(
      icon: Icon(Icons.post_add_outlined),
      label: 'Post',
      selectedIcon: Icon(Icons.post_add),
    ),
    NavigationDestination(
      icon: Icon(Icons.restaurant_outlined),
      label: 'Restaurant',
      selectedIcon: Icon(Icons.restaurant),
    ),
  ];

  final List<Widget> pages = [
    Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 300),
        child: CategoryCard(category: categories[0]),
      ),
    ),
    Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: PostCard(post: posts[0]),
      ),
    ),
    Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 400),
        child: RestaurantLandscapeCard(restaurant: restaurants[0]),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text('Yummy'),
        centerTitle: true,
        actions: [
          ThemeButton(
            changeThemeMode: widget.changeTheme,
          ),
          ColorButton(
            changeColor: widget.changeColor,
            colorSelected: widget.colorSelected,
          ),
        ],
      ),
      body: IndexedStack(
        index: tab,
        children: pages,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: tab,
        onDestinationSelected: (index) {
          setState(() {
            tab = index;
          });
        },
        destinations: appBarDestinations,
      ),
    );
  }
}