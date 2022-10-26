// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:arbree_attendance/component/button.dart';
import 'package:arbree_attendance/component/custom_textfield.dart';
import 'package:flutter/material.dart';

import '../component/icon_rounded_circle.dart';
import '../utils/utils.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  List items = ['Male', 'Female', 'Others'];
  String? newValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('My Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage("https://picsum.photos/200/300"),
              ),
              CustomTextField(
                title: 'Name',
                hintText: "Paul Smith",
              ),
              CustomTextField(
                title: 'Designation',
                hintText: "Software Developer",
              ),
              CustomTextField(title: 'Date of birth'),
              // CustomTextField(title: 'Gender'),
              InputDecorator(
                decoration: InputDecoration(
                  labelText: 'Gender',
                  labelStyle: TextStyle(
                    color: Utils.colorPrimary,
                    fontSize: 22,
                  ),
                  errorStyle: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 16.0,
                  ),
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
                    hint: Text('Select your gender'),
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
              ),
              CustomTextField(
                title: 'Phone number',
                hintText: "+91 1234567890",
              ),
              CustomTextField(title: 'Email', hintText: "dev@gmail.com"),
              SizedBox(
                height: 30,
              ),
              Button(onPressed: () {}, title: 'Done'),
            ],
          ),
        ),
      ),
    );
  }
}
