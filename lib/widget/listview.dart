import 'package:flutter/material.dart';
import 'package:movie_app/component_page/listview_adapter.dart';
import 'package:movie_app/data/movie_data.dart';

class MyListView extends StatelessWidget {
  MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListViewAdapter(listViewList: listViewList);
  }
}
