import 'package:flutter/material.dart';
import 'package:movie_app/widget/carousel.dart';
import 'package:movie_app/widget/divider.dart';
import 'package:movie_app/widget/gridview.dart';
import 'package:movie_app/widget/text.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222831),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              MyDivider(
                indent: 10,
                endIndent: 10,
              ),
              MyCarousel(),
              MyDivider(
                indent: 30,
                endIndent: 30,
              ),
              MyText(
                  data: 'Recommendation',
                  size: 18,
                  margin: EdgeInsets.fromLTRB(35, 10, 0, 5)),
              MyGridView(),
            ],
          ),
        ),
      ),
    );
  }
}
