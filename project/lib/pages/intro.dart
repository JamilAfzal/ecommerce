// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project/pages/navigatebutton.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 200.0,
            decoration: BoxDecoration(
              color: Colors.black,
              boxShadow: [BoxShadow(blurRadius: 20.0)],
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.elliptical(
                      MediaQuery.of(context).size.width, 100.0)),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              "Shop Inn",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 29,
                  letterSpacing: 1.9),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "An E-Commerce Application dedicated to give you a User-Friendly Experience",
              style: TextStyle(
                  color: const Color.fromARGB(255, 16, 7, 7),
                  fontSize: 12,
                  fontWeight: FontWeight.w300),
            ),
          ),
          Navigatebutton(
            onTap: () {},
            text: "",
          )
        ],
      ),
    );
  }
}
