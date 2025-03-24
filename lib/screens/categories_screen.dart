import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/models/category.dart';
import 'package:meals_app/models/meals.dart';
import 'package:meals_app/screens/meals_screen.dart';
import 'package:meals_app/widgets/category_grid_item.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({
    super.key,
    required this.availableMeals,
  });

  final List<Meal> availableMeals;

  void _selectCategory(BuildContext context, Category category) {
    final filteredMeals = availableMeals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return MealsScreen(
        title: category.title,
        meals: filteredMeals,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(24),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 2),
      children: [
        for (final category in availableCategories)
          CategoryGridItem(
            category: category,
            onSelectCateogory: () {
              _selectCategory(context, category);
            },
          )
      ],
    );
  }
}
