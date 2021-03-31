import 'package:flutter/material.dart';
import 'package:hydrana/src/scope/drink_scope.dart';
import 'package:scoped_model/scoped_model.dart';
import 'screens/main_screen.dart';

class App extends StatelessWidget {
  final DrinkModel drinkModel = DrinkModel();

  @override
  Widget build(BuildContext context) {
    return ScopedModel<DrinkModel>(
      model: drinkModel,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Hydrana",
        theme: ThemeData(
          primaryColor: Colors.blueAccent,
        ),
        home: MainScreen(drinkModel),
      ),
    );
  }
}
