// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "My cart",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 24),
        ),
      ),
      backgroundColor: Color.fromRGBO(249, 75, 24, 1).withAlpha(70),

    );
  }
}