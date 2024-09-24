import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String data;
  final double size;
  final EdgeInsetsGeometry margin;

  const MyText(
      {super.key,
      required this.data,
      required this.size,
      required this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      alignment: Alignment.topLeft,
      child: Text(
        data,
        style: TextStyle(
            color: Color(0xffEEEEEE),
            fontSize: size,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
