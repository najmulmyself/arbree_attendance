// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:arbree_attendance/component/icon_rounded_circle.dart';
import 'package:arbree_attendance/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LeaveDetails extends StatelessWidget {
  const LeaveDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Leave Details'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          IconRoundCircle(),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.calendar,
                          color: Utils.colorPrimary,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Leave Days'),
                      ],
                    ),
                    Text('6,11,12 , Sept , 2022')
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
