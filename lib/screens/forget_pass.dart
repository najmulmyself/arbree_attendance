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
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                Text('Forgot Password'),
                Text(
                    'We will send you a password reset link to the email address you provided below'),
                CustomTextField(
                  title: 'Email',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
