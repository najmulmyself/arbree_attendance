// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:arbree_attendance/utils/utils.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconRoundCircle extends StatefulWidget {
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
  State<IconRoundCircle> createState() => _IconRoundCircleState();
}

class _IconRoundCircleState extends State<IconRoundCircle> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isActive = true;
            });
          },
          child: CircleAvatar(
            radius: widget.hasIcon == true ? 50 : 35,
            backgroundColor: widget.border,
            child: CircleAvatar(
              radius: widget.hasIcon == true ? 47 : 32,
              backgroundColor: widget.color ?? Color(0xffD9F9F2),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    widget.hasIcon == true
                        ? FaIcon(
                            FontAwesomeIcons.umbrellaBeach,
                            color: Utils.colorPrimary,
                            size: 40,
                          )
                        : AutoSizeText(
                            widget.title!,
                            style: TextStyle(color: widget.border),
                            maxLines: 1,
                          ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        isActive == true
            ? CircleAvatar(radius: 4, backgroundColor: widget.border)
            : Container(),
      ],
    );
  }
}
