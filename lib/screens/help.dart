// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../utils/utils.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Help'),
      ),
      body: Column(children: [
        GestureDetector(
          onTap: () {},
          child: ListTile(
            title: Text("FAQ"),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Utils.colorBlue,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: ListTile(
            title: Text("Tutorial"),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Utils.colorBlue,
            ),
          ),
        )
      ]),
    );
  }
}
