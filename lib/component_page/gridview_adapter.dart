import 'package:flutter/material.dart';
import 'package:movie_app/models/gridview_model.dart';

class MovieAdapter extends StatelessWidget {
  final GridViewModel gridViewList;

  MovieAdapter({required this.gridViewList});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff393E46),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Color(0xff222831),
              borderRadius: BorderRadius.circular(5),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              child: Image.asset(gridViewList.image),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(5, 5, 2, 5),
                child: Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 16,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 5, 5, 5),
                child: Text(
                  gridViewList.rating,
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xffEEEEEE),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
              alignment: Alignment.topLeft,
              child: Text(
                gridViewList.title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffEEEEEE),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
