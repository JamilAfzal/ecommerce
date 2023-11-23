// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project/pages/Accessories.dart';

class CategoriesBuy extends StatefulWidget {
  final Accessories accessories;
  CategoriesBuy({super.key, required this.accessories});

  @override
  State<CategoriesBuy> createState() => _CategoriesBuyState();
}

class _CategoriesBuyState extends State<CategoriesBuy> {
  int count = 1;
  incrementcount() {
    setState(() {
      count++;
    });
  }

  decreasingcount() {
    if (count > 1) {
      setState(() {
        count--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Shop Inn",
            style: TextStyle(letterSpacing: 1.6),
          ),
        ),
        body: ListView(children: [
          Image.asset(
            widget.accessories.imagePath,
            fit: BoxFit.cover,
            width: double.infinity,
            filterQuality: FilterQuality.medium,
            height: 250,
          ),
          SizedBox(
            height: 25,
          ),
          Center(
              child: Text(
            widget.accessories.name,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Price : ",
                style: TextStyle(fontSize: 22),
              ),
              Text(
                widget.accessories.price,
                style: TextStyle(color: Colors.green, fontSize: 22),
              ),
              Text(
                "Rating : ",
                style: TextStyle(fontSize: 22),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Text(
                    widget.accessories.rating,
                    style: TextStyle(fontSize: 22),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Description: ",
              style: TextStyle(fontSize: 25, color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
                "Our ${widget.accessories.name} are very reliable  and provide some pretty good comfort to all our users in every aspect"),
          ),
          SizedBox(
            height: 32,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21), color: Colors.black),
            height: 76,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Text(
                    "Go To Cart",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white24),
                    child: IconButton(
                      onPressed: () {
                        decreasingcount();
                      },
                      icon: Icon(Icons.remove),
                      iconSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    count.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white24),
                    child: IconButton(
                      onPressed: () {
                        incrementcount();
                      },
                      icon: Icon(Icons.add),
                      iconSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
          )
        ]));
  }
}
