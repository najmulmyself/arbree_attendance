// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:arbree_attendance/component/button.dart';
import 'package:arbree_attendance/component/custom_textfield.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class LeaveSetup extends StatelessWidget {
  const LeaveSetup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Leave Setup'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 10),
        child: Column(
          children: [
            CustomTextField(title: "Allowed number of paid leaves per year"),
            CustomTextField(title: "Vacation year starts from"),
            CustomTextField(title: "Weekend"),
            SizedBox(
              height: 30,
            ),
            Button(
              onPressed: () {},
              title: "Save",
              btnColor: Utils.colorBlue,
            ),
          ],
        ),
      ),
    );
  }
}
