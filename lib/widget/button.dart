import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final double fontSize;
  final EdgeInsetsGeometry contentPadding;

  const MyButton(
      {super.key,
      required this.onPressed,
      required this.label,
      required this.fontSize,
      required this.contentPadding});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      padding: contentPadding,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7))),
              backgroundColor: MaterialStateProperty.all(Color(0xff00ADB5))),
          child: Text(
            label,
            style: TextStyle(
                color: Color(0xffEEEEEE),
                fontSize: fontSize,
                fontWeight: FontWeight.bold),
          )),
    );
  }
}
