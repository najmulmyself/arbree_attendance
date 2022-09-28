// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:arbree_attendance/component/leave_status_container.dart';
import 'package:arbree_attendance/component/leave_tile.dart';
import 'package:arbree_attendance/component/rounded_circle.dart';
import 'package:arbree_attendance/screens/leave_details_page.dart';
import 'package:arbree_attendance/screens/new_leave_req.dart';
import 'package:arbree_attendance/utils/utils.dart';
import 'package:flutter/material.dart';

class LeaveOverview extends StatefulWidget {
  const LeaveOverview({Key? key}) : super(key: key);

  @override
  State<LeaveOverview> createState() => _LeaveOverviewState();
}

class _LeaveOverviewState extends State<LeaveOverview> {
  List items = ['All', 'Available', 'Vacation', 'Sick', 'Unpaid'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leave Overview'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewLeaveReq(),
                ),
              );
            },
            icon: Icon(Icons.add),
            iconSize: 30,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RoundedCircle(
                title: 'available',
                number: 20,
                border: Color(0xff374552),
              ),
              RoundedCircle(
                title: 'vacation',
                number: 0,
                color: Color(0xffD9F9F2),
                border: Utils.colorPrimary,
              ),
              RoundedCircle(
                title: 'sick',
                number: 0,
                color: Color(0xffF8F8C9),
                border: Color(0xffFFB636),
              ),
              RoundedCircle(
                title: 'unpaid',
                number: 0,
                color: Color(0xffFAD2D2),
                border: Color(0xffF0564A),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          DropdownButton(
            // value: items[0],
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
            ),
            hint: Text('All'),
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
            onChanged: (value) {},
          ),
          Expanded(
            child: ListView(
              children: [
                LeaveStatusContainer(),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return LeaveTile(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LeaveDetails()),
                      ),
                    );
                  },
                  itemCount: 5,
                ),
                LeaveStatusContainer(),
                ListView.builder(
                  shrinkWrap: true,
                  physics:
                      ClampingScrollPhysics(), // really usefull https://stackoverflow.com/questions/60393840/how-to-add-list-view-builder-inside-another-list-view-builder
                  itemBuilder: (context, index) {
                    return LeaveTile(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LeaveDetails()),
                      ),
                    );
                  },
                  itemCount: 5,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
