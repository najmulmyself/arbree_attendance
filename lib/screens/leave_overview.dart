import 'package:arbree_attendance/component/rounded_circle.dart';
import 'package:flutter/material.dart';

class LeaveOverview extends StatelessWidget {
  const LeaveOverview({Key? key}) : super(key: key);

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
          RoundedCircle(title: 'vacation', number: 20),
        ],
      ),
    );
  }
}
