// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:arbree_attendance/utils/utils.dart';
import 'package:flutter/material.dart';

class ReportTile extends StatelessWidget {
  ReportTile({
    this.date,
  });
  final String? date;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                    date!,
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'September',
                    style: TextStyle(fontSize: 15, color: Colors.white),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Start',
                                      style: TextStyle(
                                        color: Utils.colorPrimary,
                                      ),
                                    ),
                                    Text(
                                      '11.02am',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff374552),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'late',
                                      style: TextStyle(
                                        color: Utils.colorPrimary,
                                      ),
                                    ),
                                    Text(
                                      '1h 2m',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff374552),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'total',
                                      style: TextStyle(
                                        color: Utils.colorPrimary,
                                      ),
                                    ),
                                    Text(
                                      '9h 23m',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff374552),
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
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'end',
                                      style: TextStyle(
                                        color: Utils.colorPrimary,
                                      ),
                                    ),
                                    Text(
                                      '06.30pm',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff374552),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'OT',
                                      style: TextStyle(
                                        color: Utils.colorPrimary,
                                      ),
                                    ),
                                    Text(
                                      '30m',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff374552),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
    );
  }
}
