// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:arbree_attendance/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LeaveTile extends StatelessWidget {
   LeaveTile({
    this.onTap,
  });
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        // LEAVE TILE
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
                    FaIcon(
                      FontAwesomeIcons.umbrellaBeach,
                      size: 30,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Vacation',
                      style: TextStyle(
                        fontSize: 15,
                        color: Utils.colorPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('6 jan , 2022'),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Weekday',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '3',
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
                                      'Weekend',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '2',
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
                      ],
                    ),
                  ),

                  // BOTTOM ROW WITH PENDING/ACCEPTED VALUE

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 20,
                    alignment: Alignment.center,
                    width: double.infinity,
                    color: Color(0xffF8F8C9),
                    child: Text(
                      'Pending',
                      style: TextStyle(
                        color: Color(0xffFFB636),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
