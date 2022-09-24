// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Reports'),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => Container(
                        height: 200,
                        child: Column(
                          children: [
                            ListTile(
                              title: Text('Export as PDF'),
                              leading: Icon(Icons.picture_as_pdf_rounded),
                            ),
                            ListTile(
                              title: Text('Export as Excel'),
                              leading: Icon(Icons.picture_as_pdf_rounded),
                            ),
                          ],
                        ),
                      ));
            },
            icon: Icon(Icons.picture_as_pdf_rounded),
          ),
        ],
        centerTitle: true,
      ),
      body: Center(
        child: Text('Reports'),
      ),
    );
  }
}
