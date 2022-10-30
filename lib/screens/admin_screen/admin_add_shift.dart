// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:arbree_attendance/component/button.dart';
import 'package:arbree_attendance/component/custom_textfield.dart';
import 'package:arbree_attendance/utils/utils.dart';
import 'package:flutter/material.dart';

class AdminAddShift extends StatelessWidget {
  const AdminAddShift({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Add New Shift'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 10),
        child: Column(
          children: [
            CustomTextField(
              title: "Shift Name",
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    title: "Start Time",
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: CustomTextField(
                    title: "End Time",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Button(
              onPressed: () {},
              title: "Done",
              btnColor: Utils.colorBlue,
            ),
          ],
        ),
      ),
    );
  }
}
