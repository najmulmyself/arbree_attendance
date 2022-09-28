// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:arbree_attendance/utils/utils.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconRoundCircle extends StatelessWidget {
  IconRoundCircle({
    this.color,
    this.border,
  });
  final Color? color;
  final Color? border;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: Utils.colorPrimary,
      child: CircleAvatar(
        radius: 47,
        backgroundColor: color ?? Color(0xffD9F9F2),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.umbrellaBeach,
                color: Utils.colorPrimary,
                size: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
