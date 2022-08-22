// ignore_for_file: prefer_const_constructors

import 'dart:convert';

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
      // print(' token is from SharedP $gettoken');
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    // print('token: $token');
    return Column(
      children: [
        GestureDetector(
          onTap: getData,
          child: Container(
            height: 150,
            width: double.infinity,
            color: Color(0xff0ABAB5),
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
                style: TextStyle(fontSize: 25),
              ),
              TextFormField(
                style: TextStyle(),
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff0ABAB5),
                      width: 2,
                    ),
                  ),
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Color(0xff0ABAB5),
                    fontSize: 20,
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                      onTap: () {
                        print('pressed');
                        setState(() {
                          Icon(
                            Icons.remove_red_eye,
                            color: Colors.blue,
                          );
                        });
                        // }, child: Icon(Icons.visibility_off)),
                      },
                      child: Icon(
                        Icons.remove_red_eye_rounded,
                        color: Colors.grey,
                      )),
                  labelText: 'Password',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff0ABAB5),
                      width: 2,
                    ),
                  ),
                  labelStyle: TextStyle(
                    color: Color(0xff0ABAB5),
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color(0xff0ABAB5),
                    ),
                  ),
                  onPressed: () {
                   
                    signIn();
                    print('pressed');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Profile(),
                      ),
                    );
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
