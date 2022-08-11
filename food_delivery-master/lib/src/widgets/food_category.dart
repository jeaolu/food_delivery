import 'package:flutter/material.dart';
import 'package:food_delivery/src/models/category_model.dart';
import 'package:food_delivery/src/widgets/food_card.dart';
import '../data/category_data.dart';

class FoodCategory extends StatelessWidget {
  final List<Category> _categories = categories;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
         itemCount: _categories.length,
        itemBuilder: (context, index) {
          return FoodCard(
            categoryName: _categories[index].categoryName,
            numberOfItems: _categories[index].numberOfItems,
            imagePath: _categories[index].imagePath,
          );
        },
      ),
    );
  }
}
