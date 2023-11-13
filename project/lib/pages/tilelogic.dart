// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:project/pages/Accessories.dart';
import 'package:project/pages/Cart.dart';

class Tile extends StatefulWidget {
  final Accessories accessories;
  void Function()? onTap;
  Tile({super.key, required this.accessories, required this.onTap});

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => CartPage())));
      },
      child: Container(
          height: 300,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(11)),
          child: Column(children: [
            Image.asset(
              widget.accessories.imagePath,
              fit: BoxFit.cover,
              height: 140,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              widget.accessories.name,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 160,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    widget.accessories.price,
                    style: TextStyle(
                        fontSize: 15,
                        color: const Color.fromARGB(255, 41, 146, 45)),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Text(widget.accessories.rating)
                ],
              ),
            )
          ])),
    );
  }
}
