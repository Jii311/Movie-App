import 'package:flutter/material.dart';
import 'package:movie_app/widget/divider.dart';
import 'package:movie_app/widget/gridview.dart';
import 'package:movie_app/widget/text.dart';
import 'package:movie_app/widget/text_field.dart';

class SearchMenu extends StatelessWidget {
  final TextEditingController _searchcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222831),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              MyDivider(indent: 10, endIndent: 10),
              MyTextField(
                controller: _searchcontroller,
                isObscure: false,
                hintText: '',
                labelText: '',
                margin: EdgeInsets.fromLTRB(20, 5, 20, 10),
                icon: Icons.search_outlined,
              ),
              MyText(
                  data: 'Recent Search',
                  size: 18,
                  margin: EdgeInsets.fromLTRB(35, 10, 0, 5)),
              MyGridView()
            ],
          ),
        ),
      ),
    );
  }
}
