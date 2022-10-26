// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:arbree_attendance/screens/privacy_policy.dart';
import 'package:arbree_attendance/screens/terms_condition.dart';
import 'package:flutter/material.dart';

import '../utils/utils.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('About'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Version 1.0.0",
            style: TextStyle(color: Utils.colorPrimary, fontSize: 18),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => (TermsCondition()),
                ),
              );
            },
            child: ListTile(
              title: Text("Terms & Condition"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Utils.colorBlue,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PrivacyPolicy(),
                ),
              );
            },
            child: ListTile(
              title: Text("Privacy Policy"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Utils.colorBlue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
