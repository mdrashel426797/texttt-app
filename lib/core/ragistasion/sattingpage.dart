import 'package:flutter/material.dart';

class Sattingpage extends StatelessWidget {
  const Sattingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/sattingimage.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
