// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/controller/dashboard_contoller.dart';
import 'package:movie_app/pages/bottom_menu/favourite.dart';
import 'package:movie_app/pages/bottom_menu/home.dart';
import 'package:movie_app/pages/bottom_menu/profile.dart';
import 'package:movie_app/pages/bottom_menu/search.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    //Connecting controller dengan ui
    final DashboardController dashboardController =
        Get.put(DashboardController());

    final List<Widget> menus = [
      HomeMenu(),
      SearchMenu(),
      FavouriteMenu(),
      ProfileMenu()
    ];

    return Obx(() {
      return Scaffold(
        backgroundColor: Color(0xff222831),
        body: menus[dashboardController.selectedIndex.value],
        bottomNavigationBar: SizedBox(
          height: 60,
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Color(0xff393E46),
              iconSize: 25,
              unselectedFontSize: 10,
              selectedItemColor: Color(0xff00ADB5),
              unselectedItemColor: Color(0xffEEEEEE),
              currentIndex: dashboardController.selectedIndex.value,
              onTap: dashboardController.changeMenu,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: "Search"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border_outlined),
                    label: "Favourite"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_2_outlined), label: "Profile")
              ]),
        ),
      );
    });
  }
}
