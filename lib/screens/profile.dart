// ignore_for_file: avoid_unnecessary_containers

import 'dart:convert';

import 'package:arbree_attendance/model/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  dynamic data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getToken();
  }

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
      print('JsonD : ${response['data']['email']}');
      print(res.body);
      data = response['data'];
      // final user = Data.fromJson(response['data']);
      // print(user.email);
    });
  }

  getToken() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    print(' token is from SharedP getToken $token');
    getUser(token);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('Hello'),
        ),
      ),
    );
  }
}
