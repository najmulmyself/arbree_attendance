// ignore_for_file: prefer_const_constructors

import 'package:arbree_attendance/component/icon_rounded_circle.dart';
import 'package:arbree_attendance/component/rounded_circle.dart';
import 'package:arbree_attendance/utils/utils.dart';
import 'package:flutter/material.dart';

class TeamProfile extends StatelessWidget {
  const TeamProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Team Profile'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48.0),
            child: TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                // labelText: 'Team Name',
                hintText: 'Search Employee',
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconRoundCircle(
                hasIcon: false,
                title: 'Member',
                border: Utils.colorPrimary,
                // color: ,
              ),
              IconRoundCircle(
                hasIcon: false,
                title: 'Maneger',
                border: Utils.colorBlue,
                color: Colors.white,
              ),
              IconRoundCircle(
                hasIcon: false,
                border: Utils.colorYollow,
                color: Utils.colorYollowSecondary,
                title: 'Admin',
              ),
            ],
          )
        ],
      ),
    );
  }
}
