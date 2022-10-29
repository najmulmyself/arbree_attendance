// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:arbree_attendance/component/button.dart';
import 'package:arbree_attendance/component/custom_textfield.dart';
import 'package:flutter/material.dart';

class AdminNewNotice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Notice"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            CustomTextField(
              title: 'Title',
            ),
            CustomTextField(
              title: 'Description',
            ),
            SizedBox(
              height: 30,
            ),
            Button(
              title: 'Done',
              onPressed: () {},
              btnColor: Color(0xff374552),
            ),
          ],
        ),
      ),
    );
  }
}
