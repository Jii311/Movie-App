import 'dart:math';

import 'package:flutter/material.dart';
import 'package:movie_app/models/listview-model.dart';

class MyListView extends StatelessWidget {
  final List<ListViewModel> listViewList = [
    ListViewModel(
        image: 'assets/listview/1917.png', title: '1917', rating: '9.1'),
    ListViewModel(
        image: 'assets/listview/barbie.png', title: 'Barbie', rating: '8.9'),
    ListViewModel(
        image: 'assets/listview/black-panther.png',
        title: 'Black Panther',
        rating: '8.2'),
    ListViewModel(
        image: 'assets/listview/black-adam.png',
        title: 'Black Adam',
        rating: '8.1'),
    ListViewModel(
        image: 'assets/listview/captain-america-tws.png',
        title: 'Captain America : The Winter Soldier',
        rating: '9.0'),
    ListViewModel(
        image: 'assets/listview/interstellar.png',
        title: 'Interstellar',
        rating: '9.5'),
    ListViewModel(
        image: 'assets/listview/jumanji.png', title: 'Jumanji', rating: '8.0'),
    ListViewModel(
        image: 'assets/listview/jurassic-park.png',
        title: 'Jurassic Park',
        rating: '8.3'),
    ListViewModel(
        image: 'assets/listview/kong.png', title: 'Kong', rating: '8.8'),
    ListViewModel(
        image: 'assets/listview/lotr.png',
        title: 'Lord Of The Ring',
        rating: '8.7'),
    ListViewModel(
        image: 'assets/listview/shang-chi.png',
        title: 'Shang-chi : And The Legend Of Ten Rings',
        rating: '8.9'),
    ListViewModel(
        image: 'assets/listview/the-marvels.png',
        title: 'The Marvels',
        rating: '8.6'),
  ];

  MyListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: ListView.builder(
        itemCount: listViewList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
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
                    listViewList[index].image,
                    width: 160,
                    height: 90,
                    scale: 16 / 9,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          listViewList[index].title,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Color(0xffEEEEEE),
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              letterSpacing: sqrt1_2),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                        child: Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 16,
                              ),
                            ),
                            Container(
                              child: Text(
                                listViewList[index].rating,
                                style: TextStyle(
                                    color: Color(0xffEEEEEE),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Text(
                          'genres',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Color(0xffEEEEEE),
                              fontWeight: FontWeight.w300),
                        ),
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
          );
        },
      ),
    );
  }
}
