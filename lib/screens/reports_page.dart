// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:arbree_attendance/component/report_tile.dart';
import 'package:arbree_attendance/component/rounded_circle.dart';
import 'package:flutter/material.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
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
          DropdownButton(
            // value: items[0],
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
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RoundedCircle(
                  border: Color(0xff374552),
                  title: 'Present',
                  number: 22,
                ),
                // SizedBox(
                //   width: 10,
                // ),
                RoundedCircle(
                  color: Color(0xffD9F9F2),
                  border: Color(0xff1AB394),
                  title: 'ontime',
                  number: 18,
                ),
                RoundedCircle(
                  color: Color(0xffF8F8C9),
                  border: Color(0xffFFB636),
                  title: 'late',
                  number: 6,
                ),
                RoundedCircle(
                  color: Color(0xffFAD2D2),
                  border: Color(0xffF0564A),
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
            // child: ListView(
            //   children: [
            //     ReportTile(
            //       date: '30',
            //     ),
            //     ReportTile(
            //       date: '29',
            //     ),
            //     ReportTile(
            //       date: '28',
            //     ),
            //     ReportTile(
            //       date: '27',
            //     ),
            //     ReportTile(
            //       date: '26',
            //     ),
            //     ReportTile(
            //       date: '25',
            //     ),
            //   ],
            // ),
            child: ListView.builder(
              reverse: true,
              itemCount: 30,
              itemBuilder: (context, index) {
                return ReportTile(
                  date: (index + 1).toString(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
