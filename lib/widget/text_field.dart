// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final EdgeInsetsGeometry margin;
  final TextEditingController controller;
  final bool isObscure;
  final String hintText;
  final String labelText;
  final IconData icon;

  const MyTextField({
    super.key,
    required this.controller,
    required this.isObscure,
    required this.hintText,
    required this.labelText,
    required this.margin,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      margin: margin,
      child: TextField(
          cursorHeight: 20,
          cursorColor: Color(0xffEEEEEE),
          maxLength: 20,
          maxLines: 1,
          controller: controller,
          decoration: InputDecoration(
            counterText: '',
            hintText: hintText,
            labelText: labelText,
            labelStyle: TextStyle(fontSize: 16, color: Color(0xffEEEEEE)),
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            suffixIcon: Icon(
              icon,
              color: Color(0xffEEEEEE),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Color(0xff414751)),
              borderRadius: BorderRadius.all(
                Radius.circular(7),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: Color(0xff393E46),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(7),
              ),
            ),
          ),
          style: TextStyle(color: Color(0xffEEEEEE), fontSize: 16),
          obscureText: isObscure),
    );
  }
}
