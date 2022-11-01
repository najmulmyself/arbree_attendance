// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables

import 'package:arbree_attendance/component/icon_rounded_circle.dart';
import 'package:arbree_attendance/screens/admin_screen/add_admin.dart';
import 'package:arbree_attendance/screens/admin_screen/email_invitation.dart';
import 'package:arbree_attendance/utils/utils.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AdminManageEmp extends StatefulWidget {
  const AdminManageEmp({Key? key}) : super(key: key);

  @override
  State<AdminManageEmp> createState() => _AdminManageEmpState();
}

class _AdminManageEmpState extends State<AdminManageEmp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Manage Employee'),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => SizedBox(
                  height: 300,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EmailInvitation(),
                            ),
                          );
                        },
                        child: ListTile(
                          title: Center(child: Text('By Email Invitation')),
                        ),
                      ),
                      Divider(
                        thickness: 1.2,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EmailInvitation(),
                            ),
                          );
                        },
                        child: ListTile(
                          title: Center(child: Text('By Bulk Invitation')),
                        ),
                      ),
                      Divider(
                        thickness: 1.2,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddAdmin(),
                            ),
                          );
                        },
                        child: ListTile(
                          title: Center(child: Text('Add Admin')),
                        ),
                      ),
                      Divider(
                        thickness: 1.2,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(
                            context,
                          );
                        },
                        child: ListTile(
                          title: Center(child: Text('Cancel')),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48.0),
            child: TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                // labelText: 'Team Name',
                hintText: 'Search Employee',
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {},
                child: IconRoundCircle(
                  hasIcon: false,
                  title: 'Member',
                  border: Utils.colorPrimary,
                  // color: ,
                ),
              ),
              IconRoundCircle(
                hasIcon: false,
                title: 'Maneger',
                border: Utils.colorBlue,
                color: Colors.white,
              ),
              IconRoundCircle(
                hasIcon: false,
                border: Utils.colorYollow,
                color: Utils.colorYollowSecondary,
                title: 'Admin',
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  // mainAxisExtent: 350,
                  crossAxisCount: 2,
                  childAspectRatio: 0.67),
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Paul Smith",
                          style: TextStyle(
                            color: Utils.colorPrimary,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CircleAvatar(
                          radius: 27,
                          backgroundImage:
                              NetworkImage("https://picsum.photos/200/300"),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 3),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.star, color: Utils.colorPrimary),
                              AutoSizeText(
                                "Software Developer",
                                maxFontSize: 12,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 3),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.phone, color: Utils.colorPrimary),
                              AutoSizeText(
                                "647-123-4567",
                                maxFontSize: 12,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 3),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.email, color: Utils.colorPrimary),
                              AutoSizeText(
                                "dev@gmail.com",
                                maxFontSize: 12,
                              ),
                            ],
                          ),
                        ),
                        // Container(
                        //   width: double.infinity,
                        //   height: 46,
                        //   decoration: BoxDecoration(
                        //     color: Utils.colorBlue,
                        //     borderRadius: BorderRadius.only(
                        //       bottomLeft: Radius.circular(5),
                        //       bottomRight: Radius.circular(5),
                        //     ),
                        //   ),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //     children: [
                        //       Icon(
                        //         Icons.edit,
                        //         color: Utils.colorPrimary,
                        //       ),
                        //       Icon(
                        //         Icons.delete,
                        //         color: Colors.red,
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
