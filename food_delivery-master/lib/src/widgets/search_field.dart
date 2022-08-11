import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 13),
          hintText: "search any food",
              suffixIcon: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(30),
                  child: Icon(Icons.search)),
          border: InputBorder.none
        ),
      ),
    );
  }
}
