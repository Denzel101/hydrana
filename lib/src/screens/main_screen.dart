import 'package:flutter/material.dart';
import 'package:hydrana/src/scope/drink_scope.dart';
//pages
import '../pages/home_page.dart';
import '../pages/order_page.dart';
import '../pages/profile_page.dart';
import '../pages/favorite_page.dart';

class MainScreen extends StatefulWidget {
  final DrinkModel drinkModel;

  MainScreen(this.drinkModel);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTabIndex = 0;

  List<Widget> pages;
  Widget currentPage;

  HomePage homePage;
  OrderPage orderPage;
  ProfilePage profilePage;
  FavoritePage favoritePage;

  @override
  void initState() {
    // TODO: implement initState
    widget.drinkModel.fetchDrinks();
    homePage = HomePage();
    orderPage = OrderPage();
    favoritePage = FavoritePage();
    profilePage = ProfilePage();
    pages = [homePage, orderPage, favoritePage, profilePage];

    currentPage = homePage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: ("Orders"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: ("Favourite"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ("Profile"),
          ),
        ],
      ),
      body: currentPage,
    );
  }
}
