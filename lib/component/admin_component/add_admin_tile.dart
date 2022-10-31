// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class AddAdminTile extends StatelessWidget {
  const AddAdminTile({
    this.name,
    this.email,
  });
  final String ? name;
  final String ? email;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
      child: ListTileTheme(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Utils.colorBlue, width: 1),
          borderRadius: BorderRadius.circular(5),
        ),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage("https://picsum.photos/200/300"),
          ),
          title: Text(
            name!,
            style: TextStyle(
              color: Utils.colorBlue,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(email!),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              color: Utils.colorPrimary,
              size: 35,
            ),
          ),
        ),
      ),
    );
  }
}
