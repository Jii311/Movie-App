import 'package:flutter/material.dart';
import 'package:movie_app/models/carousel_model.dart';
import 'package:movie_app/models/gridview_model.dart';
import 'package:movie_app/models/listview-model.dart';

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
  CarouselModel(image: 'assets/carousel/the-marvels.png', title: 'The Marvels'),
];

final List<GridViewModel> gridViewList = [
  GridViewModel(
      image: 'assets/gridview/18x2.png',
      title: '18x2 Beyond Youthfull Days',
      rating: '9.1'),
  GridViewModel(
      image: 'assets/gridview/20th-century.png',
      title: '20th Century Girl',
      rating: '8.9'),
  GridViewModel(
      image: 'assets/gridview/avenger-iw.png',
      title: 'Avengers : Infinity War',
      rating: '8.2'),
  GridViewModel(
      image: 'assets/gridview/black-panther-potrait.png',
      title: 'Black Panther',
      rating: '9.0'),
  GridViewModel(
      image: 'assets/gridview/even-if-this-love-dissapears-tonight.png',
      title: 'Even If This Love Dissapear Tonight',
      rating: '9.5'),
  GridViewModel(
      image: 'assets/gridview/interstellar-potrait.png',
      title: 'Interstellar',
      rating: '8.3'),
  GridViewModel(
      image: 'assets/gridview/joker.png', title: 'Joker', rating: '8.7'),
  GridViewModel(
      image: 'assets/gridview/oppenheimer.png',
      title: 'Oppenheimer',
      rating: '8.6'),
  GridViewModel(
      image: 'assets/gridview/spider-man-ats.png',
      title: 'Spider-Man : Across The Spider..',
      rating: '8.3'),
  GridViewModel(
      image: 'assets/gridview/star-wars.png',
      title: 'Star Wars',
      rating: '9.0'),
];

final List<ListViewModel> listViewList = [
  ListViewModel(
      image: 'assets/listview/1917.png',
      title: '1917',
      rating: '9.1',
      genre: 'Action'),
  ListViewModel(
      image: 'assets/listview/barbie.png',
      title: 'Barbie',
      rating: '8.9',
      genre: 'Romance'),
  ListViewModel(
      image: 'assets/listview/black-panther.png',
      title: 'Black Panther',
      rating: '8.2',
      genre: 'Action, Superhero'),
  ListViewModel(
      image: 'assets/listview/black-adam.png',
      title: 'Black Adam',
      rating: '8.1',
      genre: 'Action, Superhero'),
  ListViewModel(
      image: 'assets/listview/captain-america-tws.png',
      title: 'Captain America : The Winter Soldier',
      rating: '9.0',
      genre: 'Action, Superhero'),
  ListViewModel(
      image: 'assets/listview/interstellar.png',
      title: 'Interstellar',
      rating: '9.5',
      genre: 'Science, Sci-Fi'),
  ListViewModel(
      image: 'assets/listview/jumanji.png',
      title: 'Jumanji',
      rating: '8.0',
      genre: 'Action, Comedy'),
  ListViewModel(
      image: 'assets/listview/jurassic-park.png',
      title: 'Jurassic Park',
      rating: '8.3',
      genre: 'Action'),
  ListViewModel(
      image: 'assets/listview/kong.png',
      title: 'Kong',
      rating: '8.8',
      genre: 'Action'),
  ListViewModel(
      image: 'assets/listview/lotr.png',
      title: 'Lord Of The Ring',
      rating: '8.7',
      genre: 'Action'),
  ListViewModel(
      image: 'assets/listview/shang-chi.png',
      title: 'Shang-chi : And The Legend Of Ten Rings',
      rating: '8.9',
      genre: 'Action, Superhero'),
  ListViewModel(
      image: 'assets/listview/the-marvels.png',
      title: 'The Marvels',
      rating: '8.6',
      genre: 'Action, Superhero'),
];
