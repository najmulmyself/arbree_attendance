// ignore_for_file: prefer_const_constructors

import 'package:arbree_attendance/component/icon_rounded_circle.dart';
import 'package:arbree_attendance/component/rounded_circle.dart';
import 'package:arbree_attendance/utils/utils.dart';
import 'package:flutter/material.dart';

class AdminLeaveManagement extends StatelessWidget {
  const AdminLeaveManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Leave Management'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconRoundCircle(
                  color: Utils.colorRedLight,
                  border: Utils.colorRed,
                  hasIcon: false,
                  title: 'Leave',
                  title2: "Request",
                ),
                IconRoundCircle(
                  color: Colors.white,
                  border: Utils.colorBlue,
                  hasIcon: false,
                  title: 'Leave',
                  title2: "Overview",
                ),
                IconRoundCircle(
                  color: Utils.colorPrimaryLight,
                  border: Utils.colorPrimary,
                  hasIcon: false,
                  title: 'Leave',
                  title2: "Report",
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
