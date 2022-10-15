// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:arbree_attendance/component/icon_rounded_circle.dart';
import 'package:arbree_attendance/component/rounded_circle.dart';
import 'package:arbree_attendance/utils/utils.dart';
import 'package:flutter/material.dart';

class TeamProfile extends StatefulWidget {
  const TeamProfile({Key? key}) : super(key: key);

  @override
  State<TeamProfile> createState() => _TeamProfileState();
}

class _TeamProfileState extends State<TeamProfile> {
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
              GestureDetector(
                onTap: () {
                  // setState(() {
                  print('tapped 1');
                  // });
                  Center(
                    child: Text('HEllo'),
                  );
                },
                child: IconRoundCircle(
                  hasIcon: false,
                  title: 'Member',
                  border: Utils.colorPrimary,
                  // color: ,
                ),
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
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text('Hello'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
