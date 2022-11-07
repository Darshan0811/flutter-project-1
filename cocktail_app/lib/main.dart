import 'package:cocktail_app/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CocktailApp());
}

class CocktailApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      theme: ThemeData(primarySwatch: Colors.orange),
      debugShowCheckedModeBanner: false,
    );
  }
}
