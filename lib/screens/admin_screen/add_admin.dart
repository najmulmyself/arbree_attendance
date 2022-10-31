// ignore_for_file: prefer_const_constructors

import 'package:arbree_attendance/utils/utils.dart';
import 'package:flutter/material.dart';

import '../../component/admin_component/add_admin_tile.dart';

class AddAdmin extends StatelessWidget {
  const AddAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Add Admin'),
      ),
      body: SingleChildScrollView(
        child: Column(
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
              height: 10,
            ),
            AddAdminTile(
              name: "Paul Smith",
              email: "paul@gmail.com",
            ),
            AddAdminTile(
              name: "Samantha Wells",
              email: "samantha@mgail.com",
            ),
            AddAdminTile(
              name: "Viola Robinson",
              email: "viola@gmail.com",
            ),
            AddAdminTile(
              name: "Sarah Roberts",
              email: "sarah@gmail.com",
            ),
            AddAdminTile(
              name: "Charlie Lopez",
              email: "charlie@gmail.com",
            ),
            AddAdminTile(
              name: "Joe Lee",
              email: "joee@gmail.com",
            ),
            AddAdminTile(
              name: "George Williams",
              email: "george@gmail.com",
            ),
          ],
        ),
      ),
    );
  }
}
