import 'package:flutter/material.dart';
import '../widgets/category_item.dart';
import '../widgets/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: DUMMY_CATEGORIES
            .map(
              (catData) =>
                  CategoryItem(catData.title, catData.color, catData.id),
            )
            .toList());
  }
}
