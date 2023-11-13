import 'package:flutter/material.dart';
import 'package:project/pages/Categories.dart';
import 'package:project/pages/cartlogic.dart';
import 'package:project/pages/categorieslogic.dart';

class Carttile extends StatefulWidget {
  final Cartt cartt;
  void Function()? onTap;
  Carttile({super.key, required this.cartt, required this.onTap});

  @override
  State<Carttile> createState() => _CarttileState();
}

class _CarttileState extends State<Carttile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          tileColor: Colors.white,
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => Categories())));
          },
          leading: Image.asset(
            widget.cartt.image,
            height: 40,
            fit: BoxFit.contain,
          ),
          title: Row(
            children: [
              Text(
                widget.cartt.title,
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.shopping_bag_outlined,
                color: Colors.grey[400],
              )
            ],
          ),
          subtitle: Text(
            widget.cartt.subtitle,
            style: TextStyle(color: Colors.grey[400], fontSize: 10),
          ),
          trailing: widget.cartt.add),
    );
  }
}
