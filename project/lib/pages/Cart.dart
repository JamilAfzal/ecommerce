// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project/pages/cartlogic.dart';
import 'package:project/pages/carttile.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List carttt = [
    Cartt(
        title: "Air Jordan",
        image: "assets/images/shoes.jpg",
        subtitle: "Categories : Shoes",
        add: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Add More",
              style: TextStyle(fontSize: 12),
            ),
            Icon(
              Icons.add,
              size: 15,
            )
          ],
        )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        // ignore: prefer_const_literals_to_create_immutables
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "My Cart",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.shopping_cart_checkout)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: carttt.length,
              itemBuilder: (context, index) {
                return Carttile(cartt: carttt[index], onTap: () {});
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Your Order Has Been Placed")));
                },
                child: Text("Place Order"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  elevation: 9,
                  padding: EdgeInsets.all(15),
                ),
              )
            ],
          )
        ]));
  }
}
