// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Resultscreen extends StatelessWidget {
  final double Result;
  String status() {
    if (Result < 18.5) {
      return "Under Weight";
    } else if (Result > 18.5 && Result < 24.9) {
      return "Normal Weight";
    } else if (Result > 25 && Result < 29.9) {
      return "Over Weight";
    } else
      return "Obese Weight";
  }

  Color stausColor() {
    if (Result < 18.5) {
      return Color(0xff3f77a6);
    } else if (Result > 18.5 && Result < 24.9) {
      return Color(0xff008f01);
    } else if (Result > 25 && Result < 29.9) {
      return Color(0xffdb6700);
    } else
      return Color(0xffa84540);
  }

  const Resultscreen({super.key, required this.Result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0b0c20),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff0b0c20),
        title: Text(
          "The Result",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
        ),
      ),
      body: Container(
        color: Color(0xff34353f),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                status(),
                style: TextStyle(color: stausColor(), fontSize: 30),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                Result.toStringAsFixed(2),
                style: TextStyle(
                    color: Color(0xff7d7f85),
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
