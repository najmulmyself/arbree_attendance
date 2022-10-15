// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:arbree_attendance/component/button.dart';
import 'package:arbree_attendance/component/icon_rounded_circle.dart';
import 'package:arbree_attendance/screens/new_leave_req.dart';
import 'package:arbree_attendance/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LeaveDetails extends StatelessWidget {
  const LeaveDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Leave Details'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          IconRoundCircle(
            border: Utils.colorPrimary,
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.calendar,
                          color: Utils.colorPrimary,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Leave Days',
                          style: TextStyle(
                              color: Utils.colorPrimaryFont,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Text('6,11,12 , Sept , 2022')
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.calendar,
                          color: Utils.colorPrimary,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Leave Type',
                          style: TextStyle(
                              color: Utils.colorPrimaryFont,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Text('Vacation')
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.calendar,
                          color: Utils.colorPrimary,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Comments',
                          style: TextStyle(
                              color: Utils.colorPrimaryFont,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Text(
                      'I have a plan for a winter vacation trip with my family and therefor the vacation leaves are intended'),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Button(
                      btnColor: Utils.colorPrimaryFont,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewLeaveReq(
                                      appTitle: "Edit Leave Request",
                                    )));
                      },
                      title: 'Edit',
                    ),
                    Button(
                      btnColor: Colors.redAccent,
                      onPressed: () {},
                      title: 'Delete',
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 2,
                  color: Utils.colorPrimary,
                ),
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.clock,
                      color: Utils.colorYollow,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Pending admin response',
                      style: TextStyle(
                          color: Utils.colorPrimaryFont,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
