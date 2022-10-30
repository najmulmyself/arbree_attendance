// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:arbree_attendance/component/button.dart';
import 'package:arbree_attendance/utils/utils.dart';
import 'package:flutter/material.dart';

import '../../component/custom_textfield.dart';

class EmailInvitation extends StatefulWidget {
  @override
  State<EmailInvitation> createState() => _EmailInvitationState();
}

class _EmailInvitationState extends State<EmailInvitation> {
  // const EmailInvitation({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  List emailList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Email Invitation'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      remoteController: emailController,
                      title: "Email",
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      emailList.add(emailController.text);
                      emailController.clear();
                      setState(() {});
                    },
                    icon: Icon(
                      Icons.add,
                      color: Utils.colorPrimary,
                      size: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        emailList[index],
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          emailList.removeAt(index);
                          setState(() {});
                        },
                        icon: Icon(
                          Icons.close,
                          color: Colors.red,
                          size: 25,
                        ),
                      ),
                    ],
                  );
                },
                itemCount: emailList.length,
                shrinkWrap: true,
              ),
              // Column(
              //   children: [],
              // ),
              SizedBox(
                height: 50,
              ),
              Button(
                onPressed: () {},
                title: "Done",
                btnColor: Utils.colorBlue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
