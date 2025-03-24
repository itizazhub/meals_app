import 'package:meals_app/models/category.dart';
import 'package:flutter/material.dart';

class CategoryGridItem extends StatelessWidget {
  CategoryGridItem({
    super.key,
    required this.category,
    required this.onSelectCateogory,
  });

  final Category category;
  final void Function() onSelectCateogory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelectCateogory,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.55),
              category.color.withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(category.title),
      ),
    );
  }
}
