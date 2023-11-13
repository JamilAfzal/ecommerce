// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:project/pages/Cart.dart';
import 'package:project/pages/Categories.dart';
import 'package:project/pages/categorieslogic.dart';

class CategoriesTile extends StatefulWidget {
  void Function()? onTap;
  final Categoriess categories;
  CategoriesTile({super.key, required this.onTap, required this.categories});

  @override
  State<CategoriesTile> createState() => _CategoriesTileState();
}

class _CategoriesTileState extends State<CategoriesTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Categories()));
      },
      child: Container(
        height: 300,
        child: Column(
          children: [
            Image.asset(
              widget.categories.imagepath,
              fit: BoxFit.cover,
              height: 200,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              widget.categories.heading,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            Text(
              widget.categories.ranges,
              style: TextStyle(
                color: Colors.green,
                fontSize: 14,
              ),
            ),
            Text(
              widget.categories.text,
              style: TextStyle(color: Colors.grey, fontSize: 10),
            )
          ],
        ),
      ),
    );
  }
}
