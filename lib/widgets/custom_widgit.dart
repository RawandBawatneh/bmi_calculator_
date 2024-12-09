// ignore_for_file: prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace, camel_case_types

import 'package:flutter/material.dart';

class customWidgit extends StatelessWidget {
  final String text;
  final int height;
  final Function() onPressed;
  const customWidgit({
    super.key, required this.text,  this.height=50, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        
        onPressed: onPressed,
        child: Text(text,
          style: TextStyle(color: Colors.white,fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffed1557),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
