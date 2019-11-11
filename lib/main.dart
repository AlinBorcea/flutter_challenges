import 'package:flutter/material.dart';
import 'package:challenges/home/home_page.dart';
import 'package:challenges/lists/car_brands.dart';

void main() {
  runApp(MaterialApp(
    title: 'Challenges',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.lightBlue,
      scaffoldBackgroundColor: Colors.white,
      cardColor: Colors.white,
    ),
    home: CarBrands(),
  ));
}