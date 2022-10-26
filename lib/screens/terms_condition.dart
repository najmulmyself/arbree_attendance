// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:arbree_attendance/utils/utils.dart';
import 'package:flutter/material.dart';

class TermsCondition extends StatelessWidget {
  const TermsCondition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Terms & Condition'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
        ),
      ),
    );
  }
}
