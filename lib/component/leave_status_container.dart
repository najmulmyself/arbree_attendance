// ignore_for_file: prefer_const_constructors

import 'package:arbree_attendance/component/leave_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LeaveStatusContainer extends StatelessWidget {
  const LeaveStatusContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // LEAVE STATUS CONTAINER
        // LeaveStatus(),
        Container(
          padding: EdgeInsets.only(left: 20, top: 5),
          decoration: BoxDecoration(
            color: Color(0xffE2EAE8),
            border: Border.all(color: Colors.grey),
          ),
          height: 35,
          width: double.infinity,
          child: Text(
            'UPCOMING LEAVE',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Color(0xff374552),
            ),
          ),
          // color: Colors.red,
        ),
        // LeaveTile(),
        // LeaveTile(),
      ],
    );
  }
}
