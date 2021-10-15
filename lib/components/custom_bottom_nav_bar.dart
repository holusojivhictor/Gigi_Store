import 'package:flutter/material.dart';
import 'package:gigi_store/screens/favorites/favorites.dart';
import 'package:gigi_store/screens/home/home_screen.dart';
import 'package:gigi_store/screens/messaging/message_screen.dart';
import 'package:gigi_store/screens/profile/profile_screen.dart';

import '../constants.dart';
import '../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key, required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
        color: Constants.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () => Navigator.pushNamed(context, HomeScreen.routeName),
              icon: Icon(Icons.shopping_bag_outlined,
                color: MenuState.home == selectedMenu
                    ? Constants.kPrimaryColor
                    : inActiveIconColor,
              ),
            ),
            IconButton(
              onPressed: () => Navigator.pushNamed(context, Favorites.routeName),
              icon: Icon(Icons.favorite_outline,
                color: MenuState.favorite == selectedMenu
                    ? Constants.kPrimaryColor
                    : inActiveIconColor,
              ),
            ),
            IconButton(
              onPressed: () => Navigator.pushNamed(context, MessageScreen.routeName),
              icon: Icon(Icons.bubble_chart_outlined,
                color: MenuState.message == selectedMenu
                    ? Constants.kPrimaryColor
                    : inActiveIconColor,
              ),
            ),
            IconButton(
              onPressed: () => Navigator.pushNamed(context, ProfileScreen.routeName),
              icon: Icon(Icons.person_outline,
                color: MenuState.profile == selectedMenu
                    ? Constants.kPrimaryColor
                    : inActiveIconColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}