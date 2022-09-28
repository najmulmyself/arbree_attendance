// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:arbree_attendance/component/custom_textfield.dart';
import 'package:flutter/material.dart';

class NewLeaveReq extends StatelessWidget {
  const NewLeaveReq({Key? key}) : super(key: key);

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
          ],
        ),
      ),
    );
  }
}
