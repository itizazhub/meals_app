import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/models/meals.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mealsProvider = Provider<List<Meal>>((ref) {
  return dummyMeals;
});
