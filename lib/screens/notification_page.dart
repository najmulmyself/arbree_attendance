// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:arbree_attendance/component/button.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Notification'),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            // return Column(
            //   children: [
            //     ListTile(
            //       leading: CircleAvatar(
            //         radius: 20,
            //         backgroundColor: Colors.white,
            //         child: Text('A'),
            //         //backgroundImage: AssetImage('assets/images/logo_aaa.png'),
            //       ),
            //       title: Text(
            //         'Arbree has requested you to join a team',
            //         style: TextStyle(fontSize: 18),
            //       ),
            //       subtitle: Text(
            //         'Sep 20, 2022 at 09:00 AM',
            //         style: TextStyle(
            //           color: Color(0xff0ABAB5),
            //         ),
            //       ),
            //     ),
            //     Row(
            //       children: [
            //         Expanded(
            //           child: Container(
            //             margin: EdgeInsets.only(left: 20, right: 10),
            //             child: ElevatedButton(
            //               onPressed: () {},
            //               child: Text('Accept'),
            //               style: ElevatedButton.styleFrom(
            //                 primary: Color(0xff0ABAB5),
            //                 shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(10),
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ),
            //         Expanded(
            //           child: Container(
            //             margin: EdgeInsets.only(left: 10, right: 20),
            //             child: ElevatedButton(
            //               onPressed: () {},
            //               child: Text('Reject'),
            //               style: ElevatedButton.styleFrom(
            //                 primary: Colors.grey,
            //                 shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(10),
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //     Divider(
            //       thickness: 1,
            //     ),
            //   ],
            // );
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Arbree has requested you to join a team'),
                        Text('Sep 20, 2022 at 09:00 AM'),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20, right: 10),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Accept'),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff0ABAB5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 20),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Reject'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.grey,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  thickness: 1,
                ),
              ],
            );
          },
          itemCount: 10),
    );
  }
}
