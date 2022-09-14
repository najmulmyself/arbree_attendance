// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ClockInPage extends StatefulWidget {
  const ClockInPage({Key? key}) : super(key: key);

  @override
  State<ClockInPage> createState() => _ClockInPageState();
}

class _ClockInPageState extends State<ClockInPage> {
  @override
  Widget build(BuildContext context) {
    List items = [
      'Shift 1',
      'Shift 2',
      'Shift 3',
      'Shift 4',
    ];
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    // backgroundImage: AssetImage('assets/images/user.png'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Ahmed Mohamed',
                    style: GoogleFonts.openSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        // leading: Padding(
        //   padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 8),
        //   child: FaIcon(
        //     FontAwesomeIcons.bars,
        //     color: Colors.white,
        //     // size: 40,
        //   ),
        // // ),
        // leading: IconButton(
        //   onPressed: () {
        //     Scaffold.of(context).openDrawer();
        //   },
        //   icon: Icon(
        //     Icons.menu,
        //     color: Colors.white,
        //   ),
        // ),

        title: Text(
          'Arbree Attendance',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              DropdownButton(
                  // value: items[0],
                  icon: Icon(
                    Icons.keyboard_arrow_down_outlined,
                  ),
                  hint: Text('Select your shift time'),
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
                  onChanged: (value) {}),
              GestureDetector(
                onTap: null,
                child: Container(
                  child: Image.asset(
                    'assets/images/in.png',
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
              Text(
                '00h:00m:00s',
                style: TextStyle(color: Colors.amber, fontSize: 23),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: FaIcon(FontAwesomeIcons.clock,
                            color: Color(0xff0ABAB5)),
                      ),
                      Text(
                        'start time',
                        style: TextStyle(
                          color: Color(0xff0ABAB5),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: FaIcon(
                          FontAwesomeIcons.clock,
                          color: Colors.red,
                        ),
                      ),
                      Text(
                        'end time',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
