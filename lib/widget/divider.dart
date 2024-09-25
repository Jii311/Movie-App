import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Color(0xff393E46),
      indent: 30,
      endIndent: 30,
    );
  }
}
