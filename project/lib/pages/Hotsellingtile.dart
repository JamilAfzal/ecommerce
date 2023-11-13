import 'package:flutter/material.dart';
import 'package:project/pages/HotSelling.dart';

class HotSell extends StatefulWidget {
  void Function()? onTap;
  final HotSelling hotsell;
  HotSell({super.key, required this.onTap, required this.hotsell});

  @override
  State<HotSell> createState() => _HotSellState();
}

class _HotSellState extends State<HotSell> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 200,
        width: 200,
        child: Column(
          children: [
            Image.asset(
              widget.hotsell.image,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  widget.hotsell.text,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  widget.hotsell.subtitle,
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  widget.hotsell.amount,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 41, 146, 45),
                      fontSize: 15),
                ),
                SizedBox(
                  width: 40,
                ),
                Icon(
                  Icons.star,
                  color: Colors.deepOrange,
                ),
                Text(widget.hotsell.ratings)
              ],
            )
          ],
        ),
      ),
    );
  }
}
