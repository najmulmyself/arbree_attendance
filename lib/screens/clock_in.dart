// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ClockInPage extends StatelessWidget {
  const ClockInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List items = [
      'Shift 1',
      'Shift 2',
      'Shift 3',
      'Shift 4',
    ];
    return Scaffold(
      appBar: AppBar(
        // leading: Padding(
        //   padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 8),
        //   child: FaIcon(
        //     FontAwesomeIcons.bars,
        //     color: Colors.white,
        //     // size: 40,
        //   ),
        // ),
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
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
              Container(
                child: SvgPicture.asset(
                  'assets/images/clockin.svg',
                  height: 200,
                  width: 200,
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
                        child: FaIcon(FontAwesomeIcons.clock),
                      ),
                      Text('start time'),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: FaIcon(FontAwesomeIcons.clock),
                      ),
                      Text('end time'),
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
