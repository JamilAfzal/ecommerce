import 'package:flutter/material.dart';
import 'package:project/pages/intro.dart';

late Size mq;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      setState(() {});
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => IntroPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            // Adjust the duration to match SplashScreen
            top: mq.height * .35,
            left: mq.width * .22, // Adjust the initial position
            width: mq.width * .50,
            child: Image.asset("assets/images/shopping-cart.png"),
          )
        ],
      ),
    );
  }
}
