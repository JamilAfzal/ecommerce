// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project/pages/Loginbutton.dart';
import 'package:project/pages/signup.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

TextEditingController textemail = TextEditingController();
TextEditingController textpw = TextEditingController();

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 210,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              child: Text(
                "Shop Inn ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.9),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: Container(
              color: Colors.grey[400],
              width: double.infinity,
              height: 400,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: TextField(
                        controller: textemail,
                        decoration: InputDecoration(
                            hintText: "Email",
                            filled: true,
                            labelText: "Enter Your Email",
                            suffixIcon: Icon(
                              Icons.email_sharp,
                              size: 20,
                              color: Colors.grey[400],
                            ),
                            labelStyle: TextStyle(color: Colors.black),
                            fillColor: Colors.grey[300],
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.zero,
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.zero,
                                borderSide: BorderSide(color: Colors.black)),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 30, horizontal: 28)),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: TextField(
                        controller: textpw,
                        decoration: InputDecoration(
                            hintText: "Password",
                            filled: true,
                            labelText: "Enter Your Password",
                            suffixIcon: Icon(
                              Icons.password,
                              size: 20,
                              color: Colors.grey[400],
                            ),
                            labelStyle: TextStyle(color: Colors.black),
                            fillColor: Colors.grey[300],
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.zero,
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.zero,
                                borderSide: BorderSide(color: Colors.black)),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 30, horizontal: 28)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Don't Have An Account?"),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()));
                          },
                          child: Text(
                            "SignUp",
                            style: TextStyle(color: Colors.blue),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    LogInbutton(
                      text: "",
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
