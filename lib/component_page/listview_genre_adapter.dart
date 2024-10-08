import 'package:flutter/material.dart';
import 'package:movie_app/models/genre_model.dart';

class ListViewGenreAdapter extends StatelessWidget {
  final List<GenreModel> genreList;

  const ListViewGenreAdapter({super.key, required this.genreList});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genreList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(5),
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(
                vertical: 5, horizontal: 10), // Add margins
            decoration: BoxDecoration(
              color: Color(0xff00ADB5),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 80,
                  child: Text(
                    genreList[index].genres,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Color(0xffEEEEEE),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
