// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:arbree_attendance/component/custom_textfield.dart';
import 'package:flutter/material.dart';

class NewLeaveReq extends StatefulWidget {
  const NewLeaveReq({Key? key}) : super(key: key);

  @override
  State<NewLeaveReq> createState() => _NewLeaveReqState();
}

class _NewLeaveReqState extends State<NewLeaveReq> {
  List items = ['All', 'Available', 'Vacation', 'Sick', 'Unpaid'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Leave Request'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            CustomTextField(
              title: 'Leave Days',
              readOnly: true,
              onTap: () => showModalBottomSheet(
                context: context,
                builder: (context) => Container(),
              ),
            ),
            // DropdownButton(
            //   isExpanded: true,
            //   // value: items[0],
            //   icon: Icon(
            //     Icons.keyboard_arrow_down_rounded,
            //   ),
            //   hint: Text('All'),
            //   underline: Container(
            //     height: 2,
            //     color: Colors.grey,
            //   ),
            //   items: items
            //       .map(
            //         (shift) => DropdownMenuItem(
            //           child: Text(shift),
            //           value: shift,
            //         ),
            //       )
            //       .toList(),
            //   onChanged: (value) {},
            // ),
            FormField(
              builder: (context) {
                return InputDecorator(
                  decoration: InputDecoration(
                    labelText: 'Leave Type',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    errorStyle: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 16.0,
                    ),
                    // hintText: 'Please select leave type',
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(5.0),
                    // ),
                  ),
                  isEmpty: false,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      isExpanded: true,
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
                  ),
                );
              },
              // ),
            )
          ],
        ),
      ),
    );
  }
}
