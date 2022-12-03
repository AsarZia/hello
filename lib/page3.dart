import 'package:flutter/material.dart';
class My extends StatelessWidget {
  const My({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: 5000,
        width: 5000,
        child: Column(
          children: [
            Image.asset('assets/z.jpg')
          ],
        ),
      )
    );
  }
}