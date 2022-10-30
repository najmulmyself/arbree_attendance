// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class AdminShift extends StatelessWidget {
  const AdminShift({
    this.title,
    this.time,
  });
  final String? title;
  final String? time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 2),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  Text(
                    title!,
                    style: TextStyle(
                      color: Utils.colorPrimary,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            color: Utils.colorPrimary,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            time!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Utils.colorBlue,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.hourglass_bottom,
                            color: Utils.colorPrimary,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '8 hours',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Utils.colorBlue,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              color: Color(0xff374552),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.edit,
                        color: Utils.colorPrimary,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/admin/newNotice');
                        },
                        child: Text(
                          "Edit",
                          style: TextStyle(
                            color: Utils.colorPrimary,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.delete, color: Colors.red),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Delete",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
