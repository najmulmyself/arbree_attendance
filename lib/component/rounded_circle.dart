import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class RoundedCircle extends StatelessWidget {
  RoundedCircle({
    required this.title,
    this.color,
    required this.number,
    this.border,
  });
  final String title;
  final Color? color;
  final int number;
  final Color? border;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 31,
      backgroundColor: border,
      child: CircleAvatar(
        radius: 29,
        backgroundColor: color ?? Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AutoSizeText(
                number.toString(),
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: border,
                ),
              ),
              AutoSizeText(
                title,
                maxLines: 1,
                // textScaleFactor: 1.2,
                // overflow: TextOverflow.fade,
                style: TextStyle(fontSize: 11, color: border),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
