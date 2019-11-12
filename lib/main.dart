import 'package:flutter/material.dart';
import 'package:challenges/home/home_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'Challenges',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.lightBlue,
    ),
    home: HomePage(),
  ));
}