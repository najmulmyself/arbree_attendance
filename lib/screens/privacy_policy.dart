// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../utils/utils.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Privacy Policy'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "ARBREE ATTENDANCE Terms and Conditions",
            style: TextStyle(
                color: Utils.colorBlue,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
              "The terms and conditions of use shown here(hereinafter referred to as the\"Terms and Conditions\")set forth the terms between ARBREE Limited(hereinafter referred to as the\"Company\")and users(hereinafter referred to as the\"User\"or\"Users\"depending upon context)of any services or features of ARBREE ATTENDANCE (hereinafter referred to as the\"Service\"), which is provided by the Company."),
          SizedBox(
            height: 20,
          ),
          Text(
            "ARBREE ATTENDANCE Terms and Conditions",
            style: TextStyle(
                color: Utils.colorBlue,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
              "The terms and conditions of use shown here(hereinafter referred to as the\"Terms and Conditions\")set forth the terms between ARBREE Limited(hereinafter referred to as the\"Company\")and users(hereinafter referred to as the\"User\"or\"Users\"depending upon context)of any services or features of ARBREE ATTENDANCE (hereinafter referred to as the\"Service\"), which is provided by the Company."),
        ],
      ),
    );
  }
}
