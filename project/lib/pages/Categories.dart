// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project/pages/Categoriestile.dart';
import 'package:project/pages/categorieslogic.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List cats = [
    Categoriess(
        heading: "Electronics",
        imagepath: "assets/images/speakers.jpg",
        ranges: "\$200-999",
        text: "We are the largest selling brand"),
    Categoriess(
        heading: "Clothes",
        imagepath: "assets/images/clothes.jpg",
        ranges: "\$40-150",
        text: "Our Clothes have the best fabric and gives the most comfort"),
    Categoriess(
        heading: "Watches",
        imagepath: "assets/images/watches.jpg",
        ranges: "\$50-2000",
        text: "Watches are the main thing that is required for dressing "),
    Categoriess(
        heading: "Shoes",
        imagepath: "assets/images/shoes.jpg",
        ranges: "\$100-300",
        text: "Shoes with the best prices ")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "All Categories",
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cats.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(20),
                  child: Card(
                    borderOnForeground: true,
                    elevation: 30,
                    child: CategoriesTile(
                      onTap: () {},
                      categories: cats[index],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
