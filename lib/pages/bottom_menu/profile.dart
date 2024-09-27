import 'package:flutter/material.dart';
import 'package:movie_app/widget/carousel.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222831),
      appBar: AppBar(
        toolbarHeight: 45,
        centerTitle: true,
        backgroundColor: Color(0xff222831),
        title: Image.asset(
          'assets/logo.png',
          fit: BoxFit.fitHeight,
          height: 40,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
