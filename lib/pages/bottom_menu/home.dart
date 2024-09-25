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
        child: Expanded(
          child: Container(
            child: Column(
              children: [
                MyDivider(),
                MyCarousel(),
                MyDivider(),
                MyText(
                    data: 'Recommendation',
                    size: 18,
                    margin: EdgeInsets.fromLTRB(35, 10, 0, 5)),
                MyGridView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
