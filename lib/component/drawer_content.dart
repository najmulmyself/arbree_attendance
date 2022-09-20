// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:arbree_attendance/component/custom_listtile.dart';
import 'package:arbree_attendance/screens/notification_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerContent extends StatelessWidget {
  const DrawerContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Column(
          children: [
            Container(
              // height: 150,
              width: double.infinity,
              color: Color(0xff0ABAB5),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Image.asset('assets/images/logo_aaa.png'),
                    SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        // backgroundColor: Colors.white,
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Text('A'),
                        //backgroundImage: AssetImage('assets/images/logo_aaa.png'),
                      ),
                      title: Text(
                        'Arbree Limited',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      subtitle: Text(
                        'View company profile',
                        style: TextStyle(color: Colors.white),
                      ),
                      // trailing: Icon(
                      //   Icons.arrow_right_outlined,
                      //   color: Colors.white,
                      // ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                children: [
                  CustomListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NotificationPage()));
                    },
                    title: 'Notifications',
                    icon: FontAwesomeIcons.bell,
                    trailing: true,
                    countNotification: '5',
                  ),
                  CustomListTile(
                    onTap: null,
                    title: 'Notice Board',
                    icon: FontAwesomeIcons.clipboard,
                  ),
                  CustomListTile(
                    onTap: null,
                    title: 'Attendance Report',
                    icon: FontAwesomeIcons.listCheck,
                  ),
                  CustomListTile(
                    onTap: null,
                    title: 'Leave Overview',
                    icon: FontAwesomeIcons.calendarCheck,
                  ),
                  CustomListTile(
                    onTap: null,
                    title: 'Team Profile',
                    icon: FontAwesomeIcons.usersRectangle,
                  ),
                  CustomListTile(
                    onTap: null,
                    title: 'My Profile',
                    icon: FontAwesomeIcons.user,
                  ),
                  CustomListTile(
                    onTap: null,
                    title: 'Settings',
                    icon: FontAwesomeIcons.gears,
                  ),
                  CustomListTile(
                    onTap: null,
                    title: 'Sign out',
                    icon: FontAwesomeIcons.rightFromBracket,
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Color(0xff0ABAB5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.userAstronaut,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('ADMIN PANEL',
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}




// DropdownButtonHideUnderline(
//                   child: DropdownButton(
//                       // hint: Text('Select Shift'),
//                       // value: items[0],
//                       // icon: Icon(
//                       //   Icons.keyboard_arrow_down_outlined,
//                       // ),
//                       // hint: ListTile(
//                       //   leading: Icon(
//                       //     Icons.verified_user_outlined,
//                       //   ),
//                       //   title: Text('Arbree Limited'),
//                       //   subtitle: Text('View company profile'),
//                       //   trailing: Icon(Icons.arrow_drop_down_circle_sharp),
//                       // ),
//                       // hint: Row(
//                       //   children: [
//                       //     Icon(Icons.verified),
//                       //     Column(
//                       //       children: [
//                       //         Text('Arbree Limited'),
//                       //         Text('View company profile'),
//                       //       ],
//                       //     ),
//                       //     Icon(Icons.arrow_drop_down),
//                       //   ],
//                       // ),
//                       // ],
//                       // ),
//                       // underline: Container(
//                       //   height: 2,
//                       //   color: Colors.grey,
//                       // ),
//                       items: items
//                           .map(
//                             (shift) => DropdownMenuItem(
//                               child: Text(shift),
//                               value: shift,
//                             ),
//                           )
//                           .toList(),
//                       onChanged: (value) {}),
//                 ),