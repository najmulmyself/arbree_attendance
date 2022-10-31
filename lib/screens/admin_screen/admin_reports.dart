// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:arbree_attendance/component/admin_component/admin_report_tile.dart';
import 'package:arbree_attendance/component/report_tile.dart';
import 'package:arbree_attendance/component/rounded_circle.dart';
import 'package:arbree_attendance/utils/utils.dart';
import 'package:flutter/material.dart';

class AdminReportsScreen extends StatefulWidget {
  const AdminReportsScreen({Key? key}) : super(key: key);

  @override
  State<AdminReportsScreen> createState() => _AdminReportsScreenState();
}

class _AdminReportsScreenState extends State<AdminReportsScreen> {
  List items = [
    'This Months',
    'September 2022',
    'August 2022',
    'July 2022',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Reports'),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => Container(
                        height: 200,
                        child: Column(
                          children: [
                            ListTile(
                              title: Text('Export as PDF'),
                              leading: Icon(Icons.picture_as_pdf_rounded),
                            ),
                            ListTile(
                              title: Text('Export as Excel'),
                              leading: Icon(Icons.picture_as_pdf_rounded),
                            ),
                          ],
                        ),
                      ));
            },
            icon: Icon(Icons.picture_as_pdf_rounded),
          ),
        ],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48.0),
            child: DropdownButton(
              isExpanded: true,
              icon: Icon(
                Icons.calendar_today,
              ),
              hint: Text('This Months'),
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
          ),
          // SizedBox(
          //   height: 20,
          // ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 48.0),
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RoundedCircle(
                  border: Utils.colorBlue,
                  title: 'Present',
                  number: 22,
                ),
                RoundedCircle(
                  color: Utils.colorPrimaryLight,
                  border: Utils.colorPrimary,
                  title: 'ontime',
                  number: 18,
                ),
                RoundedCircle(
                  color: Utils.colorYollowSecondary,
                  border: Utils.colorYollow,
                  title: 'late',
                  number: 6,
                ),
                RoundedCircle(
                  color: Utils.colorRedLight,
                  border: Utils.colorRed,
                  title: 'absent',
                  number: 2,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: 30,
              itemBuilder: (context, index) {
                return AdminReportTile(
                  name: "Paul",
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
