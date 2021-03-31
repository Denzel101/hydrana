import 'package:hydrana/src/models/food_model.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;

class DrinkModel extends Model {
  List<Drink> _drinks = [];

  List<Drink> get drinks {
    return List.from(_drinks);
  }

  void addFood(Drink drink) {
    _drinks.add(drink);
  }

  void fetchDrinks() {
    http
        .get(
          Uri.parse(
              'https://192.168.16.107/flutter_drinks_app/api/drinks/getDrinks.php'),
        )
        .then(
          (http.Response response) => print('Fetching data: ${response.body}'),
        );
  }
}
