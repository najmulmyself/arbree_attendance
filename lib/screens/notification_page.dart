// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, dead_code

import 'package:arbree_attendance/component/button.dart';
import 'package:arbree_attendance/utils/utils.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List data = [
      {
        'title':
            'Arbree has requested you to check in at your current location',
        'date': '2021-09-01',
        'time': '10:00 AM',
        'status': 'Pending',
        'action': false,
      },
      {
        'title': 'Admin posted a new notice on Arbree limited',
        'date': '2021-09-01',
        'time': '10:00 AM',
        'status': 'Pending',
        'action': false,
      },
      {
        'title': 'CEO wants you to join as an Admin',
        'date': '2021-09-01',
        'time': '10:00 AM',
        'status': 'Pending',
        'action': true,
      },
      {
        'title': 'Admin has updated your clock time for 2021-09-01',
        'date': '2021-09-01',
        'time': '10:00 AM',
        'action': false,
      },
      {
        'title': 'Admin has accepted your leave request',
        'date': '2021-09-01',
        'time': '10:00 AM',
        'status': 'Pending',
        'action': false,
      },
      {
        'title': 'You have a new leave request from John Doe',
        'date': '2021-09-01',
        'time': '10:00 AM',
        'status': 'Pending',
        'action': false,
      },
      {
        'title': 'You have a new leave request from John Doe',
        'date': '2021-09-01',
        'time': '10:00 AM',
        'status': 'Pending',
        'action': false,
      },
      {
        'title': 'You have a new leave request from John Doe',
        'date': '2021-09-01',
        'time': '10:00 AM',
        'status': 'Pending',
        'action': false,
      },
    ];

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
            //       title: Text(
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
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 5),
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 21,
                        backgroundColor: Colors.black87,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                          child: Text('A'),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data[index]['title'],
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Sep 20, 2022 at 09:00 AM',
                              style: TextStyle(
                                color: Utils.colorPrimary,
                              ),
                            ),
                            data[index]['action'] == false
                                ? Container()
                                : Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 20, right: 10),
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          child: Text('Accept'),
                                          style: ElevatedButton.styleFrom(
                                            primary: Utils.colorPrimary,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 10, right: 20),
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          child: Text('Reject'),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.grey,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                  ),
                ],
              ),
            );
          },
          itemCount: data.length),
    );
  }
}
