import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:transparent_image/transparent_image.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInImage.assetNetwork(
              placeholder: 'assets/loading.gif',
              image: "https://img.freepik.com/free-vector/feeling-angry-concept-illustration_114360-3473.jpg?w=360", height: 400, width: 240,
            ),
            Gap(10),
            Text("Biz hali yetkazib bermayapmiz! \n Tez orada yetkazamiz.", textAlign: TextAlign.center, style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "MyFont",
              color: CupertinoColors.black,
              fontSize: 30
            ),),
          ],
        ),
      ),
    );
  }
}
