import 'package:flutter/material.dart';

class image extends StatefulWidget {
  const image({super.key});

  @override
  State<image> createState() => _imageState();
}

class _imageState extends State<image> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Image.asset("assets/images/img(1).jpg"),
        ),
      ),
    );
  }
}