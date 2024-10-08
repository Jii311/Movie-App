import 'package:flutter/material.dart';
import 'package:movie_app/widget/button.dart';
import 'package:movie_app/widget/divider.dart';
import 'package:movie_app/widget/listtile.dart';
import 'package:movie_app/widget/text.dart';
import 'package:get/get.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222831),
      body: Container(
        child: Column(
          children: [
            MyDivider(indent: 10, endIndent: 10),
            Icon(
              Icons.person,
              color: Colors.white,
              size: 100,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyText(
                        data: 'Hello, Jii',
                        size: 20,
                        margin: EdgeInsets.all(5)),
                  ],
                ),
                SizedBox(height: 20),
                MyListTile(
                  leadingIcon: Icons.person,
                  title: 'My Profile',
                  onTap: () {},
                ),
                MyListTile(
                  leadingIcon: Icons.settings,
                  title: 'Settings',
                  onTap: () {},
                ),
                MyListTile(
                  leadingIcon: Icons.notifications,
                  title: 'Notification',
                  onTap: () {},
                ),
                MyListTile(
                  leadingIcon: Icons.mark_unread_chat_alt_rounded,
                  title: 'FAQ',
                  onTap: () {},
                ),
                MyListTile(
                  leadingIcon: Icons.info,
                  title: 'About App',
                  onTap: () {},
                ),
                MyButton(
                  onPressed: () {
                    Get.toNamed('/');
                  },
                  label: 'Log Out',
                  fontSize: 12,
                  contentPadding: EdgeInsets.all(0),
                  margin: EdgeInsets.all(5),
                  width: 110,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
