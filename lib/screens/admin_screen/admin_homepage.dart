// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:arbree_attendance/component/admin_component/admin_drawer.dart';
import 'package:arbree_attendance/screens/admin_screen/admin_reports.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../component/admin_component/admin_tile.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: AdminDrawer(),
      ),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Arbree Attendance'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AdminReportsScreen()));
            },
            child: AdminTile(
              icon: FontAwesomeIcons.listCheck,
              title: "Attendance Report",
            ),
          ),
          AdminTile(
            icon: FontAwesomeIcons.calendarCheck,
            title: "Leave Management",
          ),
          AdminTile(
            title: 'Notice Board',
            icon: FontAwesomeIcons.clipboard,
          ),
          AdminTile(
            title: "Mange Shift",
            icon: FontAwesomeIcons.calendarDays,
          ),
          AdminTile(
            title: "Manage Employee",
            icon: FontAwesomeIcons.userCheck,
          ),
        ],
      ),
    );
  }
}
