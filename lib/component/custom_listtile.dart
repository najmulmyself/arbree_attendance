// ignore_for_file: prefer_const_constructors

import 'package:arbree_attendance/utils/utils.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  CustomListTile(
      {required this.icon,
      required this.title,
      required this.onTap,
      this.trailing = false,
      this.countNotification});
  final IconData? icon;
  final String? title;
  final Function()? onTap;
  bool trailing;
  final String? countNotification;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 2,
      contentPadding: EdgeInsets.symmetric(horizontal: 30),
      minVerticalPadding: 2,
      leading: Icon(icon!, color: Utils.colorPrimary),
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
