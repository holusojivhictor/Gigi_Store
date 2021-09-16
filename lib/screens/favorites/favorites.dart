import 'package:flutter/material.dart';
import 'package:gigi_store/components/custom_bottom_nav_bar.dart';
import 'package:gigi_store/components/icon_button_wout_counter.dart';
import 'package:gigi_store/constants.dart';
import 'package:gigi_store/screens/cart/cart_screen.dart';
import 'package:gigi_store/screens/favorites/components/body.dart';

import '../../enums.dart';

class Favorites extends StatelessWidget {
  static String routeName = "/favorites";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.favorite,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Constants.kSecondaryColor.withOpacity(0.2),
      automaticallyImplyLeading: false,
      title: Text(
        "Favorites",
        style: TextStyle(color: Constants.black),
      ),
      actions: [
        IconBtnWithOutCounter(
          icon: Icons.search,
          press: () {},
        ),
        SizedBox(width: 10),
        IconBtnWithOutCounter(
          icon: Icons.shopping_cart_outlined,
          press: () => Navigator.pushNamed(context, CartScreen.routeName),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}