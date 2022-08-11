import 'package:flutter/material.dart';
import 'package:food_delivery/src/pages/favourite_page.dart';
import 'package:food_delivery/src/pages/home_page.dart';
import 'package:food_delivery/src/pages/order_page.dart';
import 'package:food_delivery/src/pages/profile_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTabIndex = 0;
  HomePage homePage;
  Order orderPage;
  FavouritePage favouritePage;
  ProfilePage profilePage;
  List<Widget> pages;
  Widget currentPage;

  @override
  void initState() {
    super.initState();
    homePage = HomePage();
    orderPage = Order();
    favouritePage = FavouritePage();
    profilePage = ProfilePage();
    pages = [homePage,orderPage, favouritePage, profilePage];

    currentPage = homePage;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            currentTabIndex = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Orders"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favourite"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile "),
        ],
      ),
      body: currentPage,
    );
  }
}
