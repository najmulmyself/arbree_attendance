// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
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
              Row(
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
                    color: Color(0xffFAD2D2),
                    border: Color(0xffF0564A),
                    title: 'ontime',
                    number: 22,
                  ),
                  RoundedCircle(
                    color: Color(0xffF8F8C9),
                    border: Color(0xffFFB636),
                    title: 'late',
                    number: 22,
                  ),
                  RoundedCircle(
                    color: Color(0xffD9F9F2),
                    border: Color(0xff1AB394),
                    title: 'absent',
                    number: 22,
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.red,
                    child: Text('Chart'),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
