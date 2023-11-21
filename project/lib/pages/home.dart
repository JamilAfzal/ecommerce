// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:project/pages/Accessories.dart';
import 'package:project/pages/Cart.dart';
import 'package:project/pages/Categories.dart';
import 'package:project/pages/HomePAGE.dart';
import 'package:project/pages/HotSelling.dart';
import 'package:project/pages/Hotsellingtile.dart';
import 'package:project/pages/categoriesbuy.dart';
import 'package:project/pages/hotsellcart.dart';
import 'package:project/pages/sigin.dart';
import 'package:project/pages/tilelogic.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List sell = [
    HotSelling(
        amount: "\$300",
        text: "Air Jordan",
        image: "assets/images/air-jordan.jpeg",
        ratings: "4.8",
        subtitle: "In Shoes"),
    HotSelling(
        amount: "\$500",
        text: " Haier ",
        image: "assets/images/washingmachine.jpg",
        ratings: "4.9",
        subtitle: "In Elec "),
    HotSelling(
        amount: "\$250",
        text: "Rolex",
        image: "assets/images/watches.jpg",
        ratings: "5.0",
        subtitle: "In Watches")
  ];
  List cards = [
    Accessories(
        name: "Clothes",
        imagePath: "assets/images/clothes.jpg",
        rating: "4.5",
        price: "\$30-70"),
    Accessories(
        name: "Shoes",
        imagePath: "assets/images/air-jordan.jpeg",
        rating: "4.2",
        price: "\$25-200"),
    Accessories(
        name: "Watches",
        imagePath: "assets/images/watches.jpg",
        rating: "4.7",
        price: "\$ 25-45"),
    Accessories(
        name: "Electronics",
        imagePath: "assets/images/speakers.jpg",
        rating: "4.8",
        price: "\$90-1000")
  ];
  late PageController controller;
  int selectedindex = 0;
  void navigatetocat(int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => CategoriesBuy(accessories: cards[index])));
  }

  void navigatetocart(int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => FinalHotSell(
                  hotsellingg: sell[index],
                )));
  }

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Shop Inn",
          style: TextStyle(letterSpacing: 1.6),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade900,
        child: Column(children: [
          Container(
            height: 300,
            width: double.infinity,
            child: DrawerHeader(
                child: Center(
              child: Text(
                "Youraccount@username.com",
                style:
                    TextStyle(color: const Color.fromARGB(255, 247, 247, 247)),
              ),
            )),
          ),
          Container(
            height: 510,
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Divider(
                  thickness: 1,
                  color: Colors.white,
                ),
                ListTile(
                  contentPadding: EdgeInsets.only(left: 35, top: 10),
                  leading: Icon(
                    Icons.person_2,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Profile",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.white,
                ),
                ListTile(
                  contentPadding: EdgeInsets.only(left: 35, top: 10),
                  leading: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Your Orders",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 252,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signin()));
                  },
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 35, top: 10),
                    leading: Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    title: Text(
                      "LogOut",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  selectedindex = index;
                });
              },
              children: [
                // Replace HomePagee() with the actual content for the first page
                Container(
                    color: Colors.grey[500],
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: ListView(shrinkWrap: true, children: [
                            TextField(
                                decoration: InputDecoration(
                                    hintText: "Search",
                                    suffixIcon: Icon(
                                      Icons.search,
                                      color: Colors.black,
                                    ),
                                    filled: true,
                                    fillColor: Colors.grey[300],
                                    contentPadding: EdgeInsets.all(20),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.zero,
                                        borderSide: BorderSide(
                                            color: const Color.fromARGB(
                                                255, 252, 250, 250))),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.zero,
                                        borderSide: BorderSide(
                                            color: const Color.fromARGB(
                                                255, 246, 244, 244))))),
                          ]),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 25),
                                  child: Text(
                                    "Categories",
                                    style: TextStyle(fontSize: 22),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(right: 25),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Categories()));
                                  },
                                  child: Text(
                                    "See All",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: cards.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: ((context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Card(
                                      elevation: 15,
                                      child: Tile(
                                          onTap: () {
                                            navigatetocat(index);
                                          },
                                          accessories: cards[index])),
                                );
                              })),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Hot Selling 🔥",
                          style: TextStyle(fontSize: 18),
                        ),
                        Container(
                          height: 225,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: sell.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                    padding:
                                        EdgeInsets.only(left: 20, right: 20),
                                    child: Card(
                                      elevation: 15,
                                      child: HotSell(
                                          onTap: () {
                                            navigatetocart(index);
                                          },
                                          hotsell: (sell[index])),
                                    ));
                              }),
                        )
                      ],
                    )),
                // Use CartPage() for the second page
                Categories(), CartPage(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: GNav(
        backgroundColor: Colors.black,
        gap: 15,
        tabBackgroundColor: const Color.fromARGB(255, 247, 245, 245),
        tabBorderRadius: 15,
        tabActiveBorder: Border.all(color: Colors.black, width: 2),
        activeColor: Color.fromARGB(255, 123, 8, 238),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        selectedIndex: selectedindex,
        onTabChange: (index) {
          controller.animateToPage(
            index,
            duration: Duration(
                milliseconds: 200), // Change microseconds to milliseconds
            curve: Curves.bounceOut,
          );
        },
        tabs: [
          GButton(
            icon: Icons.home,
            iconActiveColor: Colors.purple,
            iconColor: Colors.white,
            text: "Home",
          ),
          GButton(
            icon: Icons.category,
            iconActiveColor: Colors.purple,
            iconColor: Colors.white,
            text: "Categories",
          ),
          GButton(
            icon: Icons.shopping_bag,
            iconActiveColor: Colors.purple,
            iconColor: Colors.white,
            text: "Cart",
          ),
        ],
      ),
    );
  }
}
