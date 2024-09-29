import 'package:flutter/material.dart';
import 'package:movie_app/widget/divider.dart';
import 'package:movie_app/widget/listview.dart';
import 'package:movie_app/widget/text.dart';

class FavouriteMenu extends StatelessWidget {
  const FavouriteMenu({super.key});

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
              MyText(
                  data: 'Your Favourite',
                  size: 18,
                  margin: EdgeInsets.fromLTRB(35, 10, 0, 5)),
              SizedBox(
                height: MediaQuery.of(context).size.height - 190,
                child: MyListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
