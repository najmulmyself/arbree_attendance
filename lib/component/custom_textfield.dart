// ignore_for_file: prefer_const_constructors

import 'package:arbree_attendance/utils/utils.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    this.suffixIcon,
    required this.title,
    this.readOnly = false,
    this.onTap,
  });
  final String? title;
  final Widget? suffixIcon;
  final bool readOnly;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap ?? null,
      readOnly: readOnly,
      style: TextStyle(),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Utils.colorPrimary,
            width: 2,
          ),
        ),
        labelText: title,
        // hintText: '31-12-2021', // this need to be dynamic
        labelStyle: TextStyle(
          color: Utils.colorPrimary,
          fontSize: 18,
        ),
      ),
    );
  }
}
