import 'package:flutter/material.dart';
import 'package:food_delivery/src/screens/main_screen.dart';


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueAccent
      ),
      home: MainScreen(),
    );
  }
}
