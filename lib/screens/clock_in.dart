// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ClockInPage extends StatelessWidget {
  const ClockInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 8),
          child: FaIcon(
            FontAwesomeIcons.bars,
            color: Colors.white,
            // size: 40,
          ),
        ),
        title: Text(
          'Arbree Attendance',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
