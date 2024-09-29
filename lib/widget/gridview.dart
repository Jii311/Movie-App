import 'package:flutter/material.dart';
import 'package:movie_app/component_page/gridview_adapter.dart';
import 'package:movie_app/data/movie_data.dart';

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.fromLTRB(30, 0, 30, 20),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: gridViewList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        mainAxisExtent: 285,
      ),
      itemBuilder: (context, index) {
        return MovieAdapter(gridViewList: gridViewList[index]);
      },
    );
  }
}
