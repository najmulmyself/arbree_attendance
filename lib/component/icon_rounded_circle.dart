// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:arbree_attendance/utils/utils.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconRoundCircle extends StatelessWidget {
  IconRoundCircle({
    this.color,
    this.border,
    this.hasIcon = true,
    this.title,
  });
  final Color? color;
  final String? title;
  final Color? border;
  final bool hasIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: hasIcon == true ? 50 : 35,
          backgroundColor: Utils.colorPrimary,
          child: CircleAvatar(
            radius: hasIcon == true ? 47 : 32,
            backgroundColor: color ?? Color(0xffD9F9F2),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  hasIcon == true
                      ? FaIcon(
                          FontAwesomeIcons.umbrellaBeach,
                          color: Utils.colorPrimary,
                          size: 40,
                        )
                      : AutoSizeText(
                          title!,
                          style: TextStyle(color: Utils.colorPrimary),
                          maxLines: 1,
                        ),
                  // Container(
                  //   height: 6,
                  //   width: 6,
                  //   color: Utils.colorPrimary,
                  // ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          height: 6,
          width: 6,
          color: Utils.colorPrimary,
        ),
      ],
    );
  }
}
