// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:arbree_attendance/component/button.dart';
import 'package:flutter/material.dart';

import '../component/custom_textfield.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            color: Color(0xff0ABAB5),
            child: Image.asset('assets/images/logo_aaa.png'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff0ABAB5),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'We will send you a password reset link to the email address you provided below',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                CustomTextField(
                  title: 'Email',
                ),
                SizedBox(
                  height: 30,
                ),
                Button(
                  onPressed: () {},
                  title: 'Send Email',
                  btnColor: Color(0xff374552),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Back to Sign In',
                    style: TextStyle(
                      color: Color(0xff0ABAB5),
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
