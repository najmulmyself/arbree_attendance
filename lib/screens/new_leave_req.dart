// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:arbree_attendance/component/button.dart';
import 'package:arbree_attendance/component/custom_textfield.dart';
import 'package:arbree_attendance/utils/utils.dart';
import 'package:flutter/material.dart';

class NewLeaveReq extends StatefulWidget {
  NewLeaveReq({this.appTitle = 'New Leave Request'});
  String? appTitle;

  @override
  State<NewLeaveReq> createState() => _NewLeaveReqState();
}

class _NewLeaveReqState extends State<NewLeaveReq> {
  List items = ['Vacation', 'Sick', 'Unpaid'];
  String? newValue;

  @override
  Widget build(BuildContext context) {
    final title = widget.appTitle;
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
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
            FormField(
              builder: (context) {
                return InputDecorator(
                  decoration: InputDecoration(
                    labelText: 'Leave Type',
                    labelStyle: TextStyle(
                      color: Utils.colorPrimary,
                      fontSize: 22,
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
                      value: newValue,
                      // value: items[0],
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                      ),
                      hint: Text('Vacation'),
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
                      onChanged: (value) {
                        setState(() {
                          newValue = value as String?;
                        });
                      },
                    ),
                  ),
                );
              },
              // ),
            ),
            CustomTextField(
              title: 'Comments',
            ),
            SizedBox(
              height: 30,
            ),
            Button(
              title: 'Send Request',
              onPressed: () {},
              btnColor: Color(0xff374552),
            ),
          ],
        ),
      ),
    );
  }
}
