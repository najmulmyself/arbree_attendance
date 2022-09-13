// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:arbree_attendance/screens/clock_in.dart';
import 'package:arbree_attendance/screens/forget_pass.dart';
import 'package:arbree_attendance/screens/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        iconTheme: IconThemeData(color: Colors.white),
        primarySwatch: MaterialColor(Color(0xff0ABAB5).value, {
          50: Color(0xffe7f9f9),
          100: Color(0xffc0f0f0),
          200: Color(0xff98e6e6),
          300: Color(0xff71dddd),
          400: Color(0xff49d4d4),
          500: Color(0xff0ABAB5),
          600: Color(0xff0ABAB5),
          700: Color(0xff0ABAB5),
          800: Color(0xff0ABAB5),
          900: Color(0xff0ABAB5),
        }),
        textTheme: GoogleFonts.openSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: SignIn(),
      ),
      routes: {
        // '/' :(context) => SignIn(),
        '/forgetpass': (context) => ForgetPass(),
        '/clockIn': (context) => ClockInPage(),
      },
    );
  }
}
