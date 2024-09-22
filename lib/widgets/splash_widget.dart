import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_shop/presentation/page/splash/second_splash.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SecondSplash()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.black,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset("assets/images/splash_background.png",
                fit: BoxFit.cover,
                opacity: const AlwaysStoppedAnimation(.5)
            ),
          ),
      Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Tuyachi Market", style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, fontFamily: "MyFont", color: CupertinoColors.white
          ))
        ],
      ),
      )
        ]
        ),
      );
  }
}