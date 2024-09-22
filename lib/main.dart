import 'package:flutter/material.dart';
import 'package:my_shop/presentation/page/splash/splash.dart';

void main(){
  runApp(const MyShop());
}
class MyShop extends StatelessWidget {
  const MyShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Access(),
    );
  }
}
