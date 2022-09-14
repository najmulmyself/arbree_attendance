// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:arbree_attendance/component/button.dart';
import 'package:arbree_attendance/component/custom_textfield.dart';
import 'package:arbree_attendance/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String token =
      ''; // inital value will be empty string if it is null then occurs a problem accessing token

  final url =
      'https://personal-attendance.herokuapp.com/api/v1.0/accounts/public/login/';
  Future signIn() async {
    print('sign in happpend');
    final response = await http.post(
      Uri.parse(url),
      body: {
        'email': 'admin@gmail.com',
        'password': '1qazZAQ!',
      },
    );
    final jsonData = jsonDecode(response.body);
    token = jsonData['data']['access_token'];
    // token will return a string

    // print(jsonData['data']['access_token']);
    // print(token);
    setData(token);
  }

  setData(token) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('token', token);
    } catch (e) {
      print(e);
    }
  }

  getData() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final gettoken = prefs.getString('token');
      print(' token is from SharedP $gettoken');
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    // print('token: $token');
    return ListView(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: getData,
          child: Container(
            height: 150,
            width: double.infinity,
            color: Color(0xff0ABAB5),
            child: Image.asset('assets/images/logo_aaa.png'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xff0ABAB5),
                  fontWeight: FontWeight.bold,
                ),
              ),
              CustomTextField(
                title: "Email",
              ),
              // TextFormField(
              //   decoration: InputDecoration(
              //     suffixIcon: GestureDetector(
              //         onTap: () {
              //           print('pressed');
              //           setState(
              //             () {
              //               Icon(
              //                 Icons.remove_red_eye,
              //                 color: Colors.blue,
              //               );
              //             },
              //           );
              //           // }, child: Icon(Icons.visibility_off)),
              //         },
              //         child: Icon(
              //           Icons.remove_red_eye_rounded,
              //           color: Colors.grey,
              //         )),
              //     labelText: 'Password',
              //     focusedBorder: UnderlineInputBorder(
              //       borderSide: BorderSide(
              //         color: Color(0xff0ABAB5),
              //         width: 2,
              //       ),
              //     ),
              //     labelStyle: TextStyle(
              //       color: Color(0xff0ABAB5),
              //       fontSize: 20,
              //     ),
              //   ),
              // ),
              CustomTextField(
                title: 'Password',
                suffixIcon: GestureDetector(
                    onTap: () {
                      print('pressed');
                      setState(
                        () {
                          Icon(
                            Icons.remove_red_eye,
                            color: Colors.blue,
                          );
                        },
                      );
                      // }, child: Icon(Icons.visibility_off)),
                    },
                    child: Icon(
                      Icons.remove_red_eye_rounded,
                      color: Colors.grey,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/forgetpass');
                    },
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(
                        color: Color(0xff0ABAB5),
                      ),
                    ),
                  )),
              SizedBox(
                height: 80,
              ),
              Button(
                  title: 'Sign In',
                  onPressed: () {
                    // signIn();
                    // print('pressed');
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => Profile(),
                    //   ),
                    // );
                    Navigator.pushNamed(context, '/clockIn');
                  }),
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Column(
          children: [
            Text(
              'Company Registration',
              style: TextStyle(
                fontSize: 17,
                color: Color(0xff0ABAB5),
              ),
            ),
            Text(
              'CLICK HERE',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff0ABAB5),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        )
      ],
    );
  }
}
