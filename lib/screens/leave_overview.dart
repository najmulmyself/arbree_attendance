// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:arbree_attendance/component/rounded_circle.dart';
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
          Icon(Icons.add),
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
                border: Color(0xff1AB394),
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
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20, top: 5),
                      decoration: BoxDecoration(
                        color: Color(0xffE2EAE8),
                        border: Border.all(color: Colors.grey),
                      ),
                      height: 35,
                      width: double.infinity,
                      child: Text(
                        'UPCOMING LEAVE',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xff374552),
                        ),
                      ),
                      // color: Colors.red,
                    ),
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
                                    'dsjflsdajf',
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'September',
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
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
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Start',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xff0ABAB5),
                                                      ),
                                                    ),
                                                    Text(
                                                      '11.02am',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Color(0xff374552),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'late',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xff0ABAB5),
                                                      ),
                                                    ),
                                                    Text(
                                                      '1h 2m',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Color(0xff374552),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'total',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xff0ABAB5),
                                                      ),
                                                    ),
                                                    Text(
                                                      '9h 23m',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Color(0xff374552),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'end',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xff0ABAB5),
                                                      ),
                                                    ),
                                                    Text(
                                                      '06.30pm',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Color(0xff374552),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'OT',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xff0ABAB5),
                                                      ),
                                                    ),
                                                    Text(
                                                      '30m',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Color(0xff374552),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(''),
                                                    Text(''),
                                                  ],
                                                ),
                                              ],
                                            ),
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
