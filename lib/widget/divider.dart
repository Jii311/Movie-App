import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  final double indent;
  final double endIndent;
  const MyDivider({super.key, required this.indent, required this.endIndent});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Color(0xff393E46),
      indent: indent,
      endIndent: endIndent,
    );
  }
}
