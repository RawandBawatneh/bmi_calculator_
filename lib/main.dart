// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/Pages/homeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
   MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen()
    );
  }
}
