// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  CustomListTile(
      {required this.icon,
      required this.title,
      this.trailing = false,
      this.countNotification});
  final IconData? icon;
  final String? title;
  bool trailing;
  final String? countNotification;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 2,
      contentPadding: EdgeInsets.symmetric(horizontal: 30),
      minVerticalPadding: 2,
      leading: Icon(icon!, color: Color(0xff0ABAB5)),
      trailing: trailing != false
          ? CircleAvatar(
              radius: 10,
              backgroundColor: Colors.red,
              child: Text(
                " ${countNotification == null ? "" : "5"} ",
                style: TextStyle(color: Colors.white),
              ),
            )
          : null,
      title: Text(
        title!,
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
