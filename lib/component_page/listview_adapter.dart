import 'dart:math';
import 'package:flutter/material.dart';
import 'package:movie_app/models/listview-model.dart';

class ListViewAdapter extends StatelessWidget {
  final List<ListViewModel> listViewList;

  ListViewAdapter({required this.listViewList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listViewList.length,
      itemBuilder: (BuildContext context, int index) {
        final movie = listViewList[index];
        return GestureDetector(
          onTap: () => {},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(0xff393E46),
            ),
            width: 400,
            height: 90,
            margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                  ),
                  child: Image.asset(
                    movie.image,
                    width: 160,
                    height: 90,
                    scale: 16 / 9,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        movie.title,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Color(0xffEEEEEE),
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            letterSpacing: sqrt1_2),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 16,
                          ),
                          SizedBox(width: 5),
                          Text(
                            movie.rating,
                            style: TextStyle(
                                color: Color(0xffEEEEEE),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        movie.genre,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Color(0xffEEEEEE),
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 5, right: 5),
                  alignment: Alignment.bottomRight,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red[700],
                    size: 20,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
