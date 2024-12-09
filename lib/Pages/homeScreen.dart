// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_calculator/Pages/resultScreen.dart';
import 'package:bmi_calculator/widgets/custom_widgit.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int age = 30;
  int wight = 80;
  int height = 174;
  bool isMale = false;
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      backgroundColor: Color(0xff0b0c20),
      appBar: AppBar(
        backgroundColor: Color(0xff0b0c20),
        title: Text(
          "BMI Calculator :)",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:
                              (isMale) ? Color(0xffed1655) : Color(0xff211d33),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male_rounded,
                              color: Colors.white,
                              size: 70,
                            ),
                            Text(
                              "Male",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:
                              (!isMale) ? Color(0xffed1655) : Color(0xff211d33),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female_rounded,
                              color: Colors.white,
                              size: 70,
                            ),
                            Text(
                              "Female",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff211d33),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Height",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                    Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 200,
                        activeColor: Color(0xffea1259),
                        inactiveColor: Color(0xff545569),
                        onChanged: (value) {
                          setState(() {
                            height = value.toInt();
                          });
                        }),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff211d33),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Age",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton.filled(
                                onPressed: () {
                                  setState(() {
                                    age = age - 1;
                                  });
                                },
                                icon: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                                style: IconButton.styleFrom(
                                  backgroundColor: Color(0xff4e4d5f),
                                ),
                              ),
                              IconButton.filled(
                                onPressed: () {
                                  setState(() {
                                    age = age + 1;
                                  });
                                },
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                style: IconButton.styleFrom(
                                  backgroundColor: Color(0xff4e4d5f),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff211d33),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Weight",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            wight.toString(),
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton.filled(
                                onPressed: () {
                                  setState(() {
                                    wight = wight - 1;
                                  });
                                },
                                icon: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                                style: IconButton.styleFrom(
                                  backgroundColor: Color(0xff4e4d5f),
                                ),
                              ),
                              IconButton.filled(
                                onPressed: () {
                                  setState(() {
                                    wight = wight + 1;
                                  });
                                },
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                style: IconButton.styleFrom(
                                  backgroundColor: Color(0xff4e4d5f),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            customWidgit(
              text: "Calculate",
              onPressed: () {
                double bmi = wight / (height * height / 10000);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Resultscreen(Result: bmi,);
                  }),
                );
              },
            )
          ],
        ),
      ),
    );
    return scaffold;
  }
}
