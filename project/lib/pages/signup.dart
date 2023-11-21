// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project/pages/home.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();
  TextEditingController text3 = TextEditingController();
  TextEditingController text4 = TextEditingController();
  TextEditingController text5 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 80,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Account Sign Up",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Expanded(
            child: Container(
              width: 300,
              color: Color.fromARGB(0, 214, 201, 201),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextField(
                      controller: text1,
                      decoration: InputDecoration(
                          hintText: "Username",
                          filled: true,
                          labelText: "Enter Your Username",
                          suffixIcon: Icon(
                            Icons.person_2,
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
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: text2,
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
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: text3,
                      decoration: InputDecoration(
                          hintText: "Email",
                          filled: true,
                          labelText: "Enter Your Email",
                          suffixIcon: Icon(
                            Icons.email,
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
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: text4,
                      decoration: InputDecoration(
                          hintText: "Number",
                          filled: true,
                          labelText: "Enter Your Number",
                          suffixIcon: Icon(
                            Icons.numbers,
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
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: text5,
                      decoration: InputDecoration(
                          hintText: "Gender",
                          filled: true,
                          labelText: "Gender",
                          suffixIcon: Icon(
                            Icons.male,
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
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (text1.text.toString().isNotEmpty &&
                            text2.text.toString().isNotEmpty &&
                            text3.text.toString().isNotEmpty &&
                            text4.text.toString().isNotEmpty &&
                            text5.text.toString().isNotEmpty) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => MenuPage())));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Please Fill all the Fields")));
                        }
                      },
                      child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20)),
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
