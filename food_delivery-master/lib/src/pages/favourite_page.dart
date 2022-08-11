import 'package:flutter/material.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({Key key}) : super(key: key);

  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Fav_page'),
      ),
    );
  }
}
