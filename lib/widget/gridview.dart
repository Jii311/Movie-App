import 'package:flutter/material.dart';
import 'package:movie_app/models/gridview_model.dart';

class MyGridView extends StatelessWidget {
  final List<GridviewModel> gridViewList = [
    GridviewModel(
        image: 'assets/gridview/18x2.png',
        title: '18x2 Beyond Youthfull Days',
        rating: '9.1'),
    GridviewModel(
        image: 'assets/gridview/20th-century.png',
        title: '20th Century Girl',
        rating: '8.9'),
    GridviewModel(
        image: 'assets/gridview/avenger-iw.png',
        title: 'Avengers : Infinity War',
        rating: '8.2'),
    GridviewModel(
        image: 'assets/gridview/black-panther-potrait.png',
        title: 'Black Panther',
        rating: '9.0'),
    GridviewModel(
        image: 'assets/gridview/even-if-this-love-dissapears-tonight.png',
        title: 'Even If This Love Dissapear Tonight',
        rating: '9.5'),
    GridviewModel(
        image: 'assets/gridview/interstellar-potrait.png',
        title: 'Interstellar',
        rating: '8.3'),
    GridviewModel(
        image: 'assets/gridview/joker.png', title: 'Joker', rating: '8.7'),
    GridviewModel(
        image: 'assets/gridview/oppenheimer.png',
        title: 'Oppenheimer',
        rating: '8.6'),
    GridviewModel(
        image: 'assets/gridview/spider-man-ats.png',
        title: 'Spider-Man : Across The Spider..',
        rating: '8.3'),
    GridviewModel(
        image: 'assets/gridview/star-wars.png',
        title: 'Star Wars',
        rating: '9.0'),
  ];

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
            mainAxisExtent: 310),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                color: Color(0xff393E46),
                borderRadius: BorderRadius.circular(5)),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xff222831),
                      borderRadius: BorderRadius.circular(5)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    child: Image.asset(gridViewList[index].image),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    gridViewList[index].title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffEEEEEE),
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 5, 2, 0),
                      child: Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 16,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 5, 0),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        gridViewList[index].rating,
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xffEEEEEE),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        });
  }
}
