// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project/pages/home.dart';
import 'package:project/pages/home.dart';
import 'package:project/pages/sigin.dart';

class LogInbutton extends StatefulWidget {
  LogInbutton({super.key, required this.onTap, required this.text});
  void Function()? onTap;
  final String text;

  @override
  State<LogInbutton> createState() => _LogInbuttonState();
}

class _LogInbuttonState extends State<LogInbutton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (textpw.text.toString().isNotEmpty &&
            textemail.text.toString().isNotEmpty) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MenuPage()));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Please Fill All The Fields To Continue")));
        }
      },
      child: Container(
          width: 150,
          height: 50,
          color: Colors.black,
          child: Center(
            child: Text(
              "Login",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          )),
    );
  }
}
