import 'package:flutter/material.dart';
import 'package:meal_app/widgets/meal_item.dart';
import '../models/meal.dart';
import '../widgets/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = 'category-meals';

  final List<Meal> availableMeals;
  const CategoryMealsScreen(this.availableMeals, {super.key});
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = availableMeals.where(((meal) {
      return meal.categories.contains(categoryId);
    })).toList();

    // we have used where function in to get categoryId from categories. we are having several meals, so the aim is to classify those cateogory into
    // different meals with their ids,

    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle!)),
      body: ListView.builder(
        itemBuilder: ((ctx, index) {
          return MealItem(
              id: categoryMeals[index].id,
              title: categoryMeals[index].title,
              imageUrl: categoryMeals[index].imageUrl,
              duration: categoryMeals[index].duration,
              complexity: categoryMeals[index].complexity,
              affordablility: categoryMeals[index].affordablility);
        }),
        itemCount: categoryMeals.length,
      ),
    );
  }
}
