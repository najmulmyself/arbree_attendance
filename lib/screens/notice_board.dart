// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:arbree_attendance/utils/utils.dart';
import 'package:flutter/material.dart';

class NoticeBoard extends StatelessWidget {
  const NoticeBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List notice = [
      {
        'title': 'Arbree Beta Team Testing',
        'date': '2021-09-01',
        'description':
            'This is to inform you all that we have our first team testing for the Arbree beta version this comming Thrusday at ....',
      },
      {
        'title': 'Arbree Hackathon',
        'date': '2021-09-01',
        'description':
            'Hello all, we are planning to have a hackathon for Arbree this coming weekend. We will be having a team of 5 people and we will be working on the Arbree beta version. We will be having a prize for the best team. Please register your team by 5pm today.',
      },
      {
        'title': 'Remote Work',
        'date': '2021-09-01',
        'description':
            'This is to inform you all that we have our first team testing for the Arbree beta version this comming Thrusday at ....',
      },
      {
        'title': 'Welcome to Arbree',
        'date': '2021-09-01',
        'description': 'Hello all, Welcome to Arbree',
      },
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Notice Board'),
      ),
      body: ListView.builder(
        itemCount: notice.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 2),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          notice[index]['title'],
                          style: TextStyle(
                            color: Color(0xff374552),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '10 sep 2022',
                          style: TextStyle(
                            color: Utils.colorPrimary,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(notice[index]['description']),
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.keyboard_arrow_down),
                        Text(
                          'Show More',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
