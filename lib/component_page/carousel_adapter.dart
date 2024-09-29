import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:movie_app/models/carousel_model.dart';

class CarouselAdapter {
  final List<CarouselModel> carouselList;

  CarouselAdapter(this.carouselList);

  List<Widget> getCarouselItems() {
    return carouselList.map((item) {
      return Container(
        color: Color(0xff222831),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
          child: Stack(
            children: [
              Image.asset(
                item.image,
                fit: BoxFit.fill,
                height: 900,
                width: 1600,
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    item.title,
                    style: TextStyle(
                      color: Color(0xffEEEEEE),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }).toList();
  }
}
