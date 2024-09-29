import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:movie_app/component_page/carousel_adapter.dart';
import 'package:movie_app/data/movie_data.dart';

class MyCarousel extends StatefulWidget {
  const MyCarousel({super.key});

  @override
  State<MyCarousel> createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {
  late CarouselAdapter _carouselAdapter;

  @override
  void initState() {
    super.initState();
    _carouselAdapter = CarouselAdapter(carouselList);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(45, 10, 0, 2),
          alignment: Alignment.topLeft,
          child: Text(
            'Trending',
            style: TextStyle(
              color: Color(0xffEEEEEE),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        CarouselSlider(
          items: _carouselAdapter.getCarouselItems(),
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 16 / 8,
            enlargeCenterPage: true,
            enlargeFactor: 0.2,
          ),
        ),
      ],
    );
  }
}
