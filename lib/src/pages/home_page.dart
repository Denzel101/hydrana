import 'package:flutter/material.dart';
import 'package:hydrana/src/data/drink_data.dart';
import 'package:hydrana/src/widgets/drink_category.dart';
import '../widgets/home_top_info.dart';
import '../widgets/search_field.dart';
import '../widgets/happyhour_spots.dart';

//data
import '../data/drink_data.dart';
import '../models/food_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Drink> _drinks = drinks;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
      children: <Widget>[
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
          children: <Widget>[
            Text(
              "Happy Hour",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                "View All",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.orangeAccent),
              ),
            )
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        Column(
          children: _drinks.map(_buildFoodItems).toList(),
        ),
      ],
    ));
  }

  Widget _buildFoodItems(Drink drink) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: BoughtFoods(
        id: drink.id,
        name: drink.name,
        imagePath: drink.imagePath,
        category: drink.category,
        discount: drink.discount,
        price: drink.price,
        ratings: drink.ratings,
      ),
    );
  }
}
