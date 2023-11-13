// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project/pages/home.dart';
import 'package:project/pages/sigin.dart';
import 'package:project/pages/signup.dart';

class Navigatebutton extends StatefulWidget {
  final String text;
  void Function()? onTap;
  Navigatebutton({super.key, required this.onTap, required this.text});

  @override
  State<Navigatebutton> createState() => _NavigatebuttonState();
}

class _NavigatebuttonState extends State<Navigatebutton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Signin()));
      },
      child: Container(
        width: 150,
        height: 70,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Let\'s Start",
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
            Icon(
              Icons.arrow_forward,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
