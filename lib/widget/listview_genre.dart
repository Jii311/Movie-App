import 'package:flutter/material.dart';
import 'package:movie_app/data/movie_data.dart';

import '../component_page/listview_genre_adapter.dart';

class MyListViewGenre extends StatelessWidget {
  MyListViewGenre({super.key});

  @override
  Widget build(BuildContext context) {
    return ListViewGenreAdapter(genreList: genreList);
  }
}
