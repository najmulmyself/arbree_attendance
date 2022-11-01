// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:arbree_attendance/screens/admin_screen/admin_edit_leave.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class LeaveReqTile extends StatelessWidget {
  const LeaveReqTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AdminEditLeave()));
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 2),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 20,
                // width: double,
                color: Colors.grey.shade300,
                child: Center(
                  child: Text(
                    'Available Leave : 5 days',
                    style: TextStyle(
                      color: Utils.colorBlue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: [
                    Text(
                      "Paul Smith",
                      style: TextStyle(
                        color: Utils.colorPrimary,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CircleAvatar(
                      radius: 27,
                      backgroundImage:
                          NetworkImage("https://picsum.photos/200/300"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.date_range_rounded,
                          color: Utils.colorPrimary,
                        ),
                        Text(
                          '10 sep 2022',
                          style: TextStyle(
                            color: Utils.colorBlue,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.badge,
                              color: Utils.colorPrimary,
                            ),
                            Text(
                              '1 Day',
                              style: TextStyle(
                                color: Utils.colorBlue,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.toys_rounded,
                              color: Utils.colorPrimary,
                            ),
                            Text(
                              'Vacation',
                              style: TextStyle(
                                color: Utils.colorBlue,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                color: Color(0xff374552),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.remove_red_eye),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "View",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check,
                          color: Utils.colorPrimary,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/admin/newNotice');
                          },
                          child: Text(
                            "Approve",
                            style: TextStyle(
                              color: Utils.colorPrimary,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.delete, color: Colors.red),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Reject",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
