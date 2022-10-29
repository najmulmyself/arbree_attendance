// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Arbree Attendance'),
      ),
      body: Column(
        children: [
          ListTileTheme(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Employee'),
              onTap: () {
                Navigator.pushNamed(context, '/employee');
              },
            ),
          ),
        ],
      ),
    );
  }
}
