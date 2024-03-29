// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:arbree_attendance/screens/admin_screen/admin_add_shift.dart';
import 'package:flutter/material.dart';

import '../../component/admin_component/admin_shift.dart';

class AdminManageShift extends StatelessWidget {
  const AdminManageShift({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AdminAddShift(),
                ),
              );
            },
            child: Icon(
              Icons.add,
            ),
          ),
        ],
        elevation: 0,
        centerTitle: true,
        title: Text('Manage Shift'),
      ),
      body: Column(
        children: [
          AdminShift(
            title: "Morning Shift",
            time: "10:00 am - 6.00 pm",
          ),
          AdminShift(
            time: "1.00 pm - 9.00 pm",
            title: "Day Shift",
          ),
          AdminShift(
            title: "Night Shift",
            time: "10.00 pm - 6.00 am",
          ),
        ],
      ),
    );
  }
}
