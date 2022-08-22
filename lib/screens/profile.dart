import 'dart:convert';

import 'package:arbree_attendance/model/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String?
        token; // inital value will be empty string if it is null then occurs a problem accessing token
    final url =
        'https://personal-attendance.herokuapp.com/api/v1.0/accounts/user/profile/';
    getUser(token) {
      print('Hello : $token');
      http.get(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      ).then((res) {
        final response = jsonDecode(res.body);
        print(res.body);
        final data = Data.fromJson(response['data']);
        print(data.email);
      });
    }

    getToken() async {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');
      print(' token is from SharedP getToken $token');
      getUser(token);
    }

    return Scaffold(
      body: Container(
        child: Center(
          child: GestureDetector(onTap: getToken, child: Text('Profile')),
        ),
      ),
    );
  }
}
