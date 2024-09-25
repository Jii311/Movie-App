// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/models/carousel_model.dart';

class MyCarousel extends StatefulWidget {
  const MyCarousel({super.key});

  @override
  State<MyCarousel> createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {

  final List<CarouselModel> carouselList = [
    CarouselModel(image: 'assets/carousel/1917.png', title: '1917'),
    CarouselModel(image: 'assets/carousel/barbie.png', title: 'Barbie'),
    CarouselModel(
        image: 'assets/carousel/black-panther.png', title: 'Black Panther'),
    CarouselModel(
        image: 'assets/carousel/captain-america-tws.png',
        title: 'Captain America'),
    CarouselModel(
        image: 'assets/carousel/interstellar.png', title: 'Interstellar'),
    CarouselModel(
        image: 'assets/carousel/jurassic-park.png', title: 'Jurassic Park'),
    CarouselModel(image: 'assets/carousel/lotr.png', title: 'Lord Of The Ring'),
    CarouselModel(
        image: 'assets/carousel/the-marvels.png', title: 'The Marvels'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(45, 10, 0, 0),
          alignment: Alignment.topLeft,
          child: Text(
            'Featuring',
            style: TextStyle(
              color: Color(0xffEEEEEE),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: CarouselSlider(
            items: carouselList
                .map((item) => Container(
                      child: Stack(
                        children: [
                          Card(
                            color: Color(0xff222831),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(7),
                              ),
                              child: Image.asset(
                                item.image,
                                width: 1600,
                                height: 900,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          // Text overlay
                          Positioned(
                            bottom: 0.0,
                            left: 0.0,
                            right: 0.0,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(7),
                                ),
                                gradient: LinearGradient(
                                    colors: [
                                      Color.fromARGB(200, 0, 0, 0),
                                      Color.fromARGB(0, 0, 0, 0),
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Text(
                                item.title, // Accessing text from model
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
          ),
        ),
      ],
    );
  }
}
