import 'package:flutter/material.dart';
import 'package:movie_app/models/carousel_model.dart';

class MyCarousel extends StatefulWidget {


  const MyCarousel({super.key});

  @override
  State<MyCarousel> createState() => _MyCarouselState();
}

  List<CarouselModel> carouselModel = [
    CarouselModel('/assets/carousel/1917.png'),
    CarouselModel('/assets/carousel/barbie.png'),
    CarouselModel('/assets/carousel/black-panther.png'),
  ];

class _MyCarouselState extends State<MyCarousel> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}