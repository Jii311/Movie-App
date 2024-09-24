import 'package:flutter/material.dart';
import 'package:movie_app/widget/carousel.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222831),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff222831),
        title: Image.asset(
          'assets/logo.png',
          fit: BoxFit.fitHeight,
          height: 40,
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              MyCarousel(),
            ],
          ),
        ),
      ),
    );
  }
}
