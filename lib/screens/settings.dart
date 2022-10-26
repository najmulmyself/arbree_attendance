// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:arbree_attendance/utils/utils.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool toggleNewValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Settings'),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.pin_drop_rounded,
              color: Utils.colorPrimary,
            ),
            title: Text('Location'),
            // trailing: Icon(
            //   Icons.arrow_forward_ios,
            //   color: Utils.colorBlue,
            // ),
            // trailing: ToggleButtons(
            //   children: [
            //     Icon(
            //       Icons.check_box_outline_blank,
            //       color: Utils.colorBlue,
            //     ),
            //     Icon(
            //       Icons.check_box,
            //       color: Utils.colorBlue,
            //     ),
            //   ],
            //   isSelected: [
            //     true,
            //     false,
            //   ],
            // ),
            trailing: Switch(
              value: toggleNewValue,
              onChanged: (value) {
                setState(() {
                  toggleNewValue = value;
                  print(toggleNewValue);
                });
              },
              activeColor: Utils.colorBlue,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Utils.colorPrimary,
            ),
            title: Text('Change Password'),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Utils.colorBlue,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.info,
              color: Utils.colorPrimary,
            ),
            title: Text('About'),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Utils.colorBlue,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.question_mark,
              color: Utils.colorPrimary,
            ),
            title: Text('Help'),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Utils.colorBlue,
            ),
          ),
        ],
      ),
    );
  }
}
