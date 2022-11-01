// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:arbree_attendance/component/custom_textfield.dart';
import 'package:arbree_attendance/component/leave_status_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../component/button.dart';
import '../../utils/utils.dart';
import '../new_leave_req.dart';

class AdminEditLeave extends StatefulWidget {
  const AdminEditLeave({Key? key}) : super(key: key);

  @override
  State<AdminEditLeave> createState() => _AdminEditLeaveState();
}

class _AdminEditLeaveState extends State<AdminEditLeave> {
  List items = ['Approve', 'Reject', 'Delete'];
  String? newValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Paul Smith'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.info_outline,
                color: Utils.colorPrimary,
              ),
              Text(
                'Available Leave : 10 Days',
                style: TextStyle(
                    color: Utils.colorPrimary,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 20,
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
              ],
            ),
          ),
          LeaveStatusContainer(
            title: "ADMIN ACTION",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                InputDecorator(
                  decoration: InputDecoration(
                    labelText: 'Approve/Reject',
                    labelStyle: TextStyle(
                      color: Utils.colorPrimary,
                      fontSize: 22,
                    ),
                    errorStyle: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 16.0,
                    ),
                  ),
                  isEmpty: false,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      isExpanded: true,
                      value: newValue,
                      // value: items[0],
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                      ),
                      hint: Text('Approve'),
                      underline: Container(
                        height: 2,
                        color: Colors.grey,
                      ),
                      items: items
                          .map(
                            (shift) => DropdownMenuItem(
                              child: Text(shift),
                              value: shift,
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          newValue = value as String?;
                        });
                      },
                    ),
                  ),
                ),
                CustomTextField(title: "Comments"),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Button(
            onPressed: () {},
            title: "Done",
            btnColor: Utils.colorBlue,
          )
        ],
      ),
    );
  }
}
