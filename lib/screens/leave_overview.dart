// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:arbree_attendance/component/leave_status_container.dart';
import 'package:arbree_attendance/component/leave_tile.dart';
import 'package:arbree_attendance/component/rounded_circle.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                LeaveStatusContainer(),
                Column(
                  children: [
                    LeaveTile(),
                    LeaveTile(),
                    LeaveTile(),
                  ],
                ),
                // test //
                // ListView.builder(
                //   itemBuilder: (context, index) {
                //     return LeaveTile();
                //   },
                //   itemCount: 2,
                // ),
                LeaveStatusContainer(),
                Column(
                  children: [
                    LeaveTile(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}



// class LeaveStatus extends StatelessWidget {
//   const LeaveStatus({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(left: 20, top: 5),
//       decoration: BoxDecoration(
//         color: Color(0xffE2EAE8),
//         border: Border.all(color: Colors.grey),
//       ),
//       height: 35,
//       width: double.infinity,
//       child: Text(
//         'UPCOMING LEAVE',
//         style: TextStyle(
//           fontWeight: FontWeight.bold,
//           fontSize: 15,
//           color: Color(0xff374552),
//         ),
//       ),
//       // color: Colors.red,
//     );
//   }
// }
