import 'package:flutter/material.dart';
import 'package:food_delivery/src/data/food_data.dart';
import 'package:food_delivery/src/models/food_models.dart';
import 'package:food_delivery/src/widgets/bought_foods.dart';
import 'package:food_delivery/src/widgets/food_category.dart';
import 'package:food_delivery/src/widgets/home_top_info.dart';
import 'package:food_delivery/src/widgets/search_field.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Food> _foods = foods;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        children: [
          HomeTopInfo(),
          FoodCategory(),
          SizedBox(
            height: 20.0,
          ),
          SearchField(),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Frequently Bought Foods",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "View All",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
            children: _foods.map((e) => _buildFoodItems(e)).toList(),
          )
        ],
      ),
    );
  }
}

Widget _buildFoodItems(Food food) {
  return Container(
    margin: EdgeInsets.only(bottom: 20.0),
    child: BoughtFoods(
      imagePath: food.imagePath,
      category: food.category,
      id: food.id,
      ratings: food.ratings,
      discount: food.discount,
      name: food.name,
      price: food.price,
    ),
  );
}
