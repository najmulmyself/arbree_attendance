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
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  height: 120,
                  // color: Colors.red,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Color(0xff374552),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '30',
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'June',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          // color: Colors.green,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                height: 20,
                                color: Color(0xffE2EAE8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Shift 1',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Color(0xff374552),
                                      ),
                                    ),
                                    Text(
                                      '10.00am - 6.00pm',
                                      style: TextStyle(
                                        color: Colors.grey.shade800,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 5),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text('Start'),
                                                Text('11.02am'),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text('late'),
                                                Text('1h 2m'),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text('total'),
                                                Text('9h 23m'),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        color: Colors.green,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
