import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LeaveTile extends StatelessWidget {
  const LeaveTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        fontSize: 15, color: Color(0xff0ABAB5)),
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 10),
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('6 jan , 2022'),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment
                                        .spaceBetween,
                                children: [
                                  Text(
                                    'Weekday',
                                    style: TextStyle(
                                      color: Color(0xff0ABAB5),
                                    ),
                                  ),
                                  Text(
                                    '3',
                                    style: TextStyle(
                                      fontWeight:
                                          FontWeight.bold,
                                      color: Color(0xff374552),
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
                                    'Weekend',
                                    style: TextStyle(
                                      color: Color(0xff0ABAB5),
                                    ),
                                  ),
                                  Text(
                                    '2',
                                    style: TextStyle(
                                      fontWeight:
                                          FontWeight.bold,
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
                  color: Color(0xffE2EAE8),
                  child: Text('Pending'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
