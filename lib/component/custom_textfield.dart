// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    this.suffixIcon,
   required this.title,
  });
  final String? title;
  final Widget ?suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      style: TextStyle(),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff0ABAB5),
            width: 2,
          ),
        ),
        labelText: title,
        labelStyle: TextStyle(
          color: Color(0xff0ABAB5),
          fontSize: 20,
        ),
      ),
    );
  }
}
