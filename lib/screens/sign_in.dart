// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  signIn() async {
    http.post(
      await Uri.parse(
          'https://personal-attendance.herokuapp.com/api/v1.0/accounts/public/login/'),
      body: {
        'email': 'admin@gmail.com',
        'password': '1qazZAQ!',
      },
    ).then((value) {
      print(value.body);
      print(value.statusCode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          width: double.infinity,
          color: Color(0xff0ABAB5),
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
                    signIn;
                    print('pressed');
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
