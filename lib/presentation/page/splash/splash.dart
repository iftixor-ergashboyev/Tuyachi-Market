import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/splash_widget.dart';
class Access extends StatelessWidget {
  const Access({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: CupertinoColors.systemGrey,
      body: Center(
        child: MyWidget(),
      ),
    );
  }
}