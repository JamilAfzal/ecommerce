// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project/pages/Hotsellingtile.dart';
import 'package:project/pages/HotSelling.dart';
import 'package:project/pages/hotsellcart.dart';

class FinalHotSell extends StatefulWidget {
  final HotSelling hotsellingg;
  FinalHotSell({
    required this.hotsellingg,
    super.key,
  });

  @override
  State<FinalHotSell> createState() => _FinalHotSellState();
}

class _FinalHotSellState extends State<FinalHotSell> {
  double amount() {
    String stringValue = widget.hotsellingg.amount;
    try {
      return double.parse(stringValue);
    } catch (e) {
      print('Error parsing amount: $stringValue');
      return 0.0; // or any default value you prefer
    }
  }

  double calculateTotalAmount() {
    return amount() * counttt;
  }

  int counttt = 1;
  void increasingggcount() {
    setState(() {
      counttt++;

      double totalamount = calculateTotalAmount();
      print('Increased count, new total amount: $totalamount');
    });
  }

  void decreasingggcount() {
    if (counttt > 1) {
      setState(() {
        counttt--;

        double totalAmount = calculateTotalAmount();
        print('Increased count, new total amount: $totalAmount');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        body: ListView(children: [
          Image.asset(
            widget.hotsellingg.image,
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
            widget.hotsellingg.text,
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
                "\$",
                style: TextStyle(color: Colors.green, fontSize: 22),
              ),
              Text(
                widget.hotsellingg.amount,
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
                    widget.hotsellingg.ratings,
                    style: TextStyle(fontSize: 22),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Description: ",
                style: TextStyle(fontSize: 25, color: Colors.grey),
              ),
              Text(
                  "Our ${widget.hotsellingg.text} are very reliable \n and provide some pretty good\n comfort to all our users in \nevery aspect")
            ],
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
                    '\$',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Text(
                    calculateTotalAmount().toString(),
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white24),
                    child: IconButton(
                      onPressed: () {
                        decreasingggcount();
                      },
                      icon: Icon(Icons.remove),
                      iconSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    counttt.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white24),
                    child: IconButton(
                      onPressed: () {
                        increasingggcount();
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
