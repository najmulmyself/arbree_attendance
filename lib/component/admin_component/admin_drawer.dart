// ignore_for_file: prefer_const_constructors

import 'package:arbree_attendance/screens/clock_in.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../screens/admin_screen/admin_homepage.dart';
import '../../screens/leave_overview.dart';
import '../../screens/my_profile.dart';
import '../../screens/notice_board.dart';
import '../../screens/notification_page.dart';
import '../../screens/reports_page.dart';
import '../../screens/settings.dart';
import '../../screens/team_profile.dart';
import '../../utils/utils.dart';
import '../custom_listtile.dart';

class AdminDrawer extends StatelessWidget {
  const AdminDrawer({Key? key}) : super(key: key);

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
              color: Utils.colorPrimary,
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
                          builder: (context) => NotificationPage(),
                        ),
                      );
                    },
                    title: 'Notifications',
                    icon: FontAwesomeIcons.bell,
                    trailing: true,
                    countNotification: '5',
                  ),
                  CustomListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyProfile(),
                        ),
                      );
                    },
                    title: 'Profile',
                    icon: FontAwesomeIcons.user,
                  ),
                  CustomListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Settings(),
                        ),
                      );
                    },
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
            // Expanded(child: Container()),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ClockInPage(),
                  ),
                );
              },
              child: Container(
                height: 50,
                width: double.infinity,
                color: Utils.colorBlue,
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
                    Text(
                      'USER PANEL',
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
