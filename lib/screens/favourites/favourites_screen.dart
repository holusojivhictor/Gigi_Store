import 'package:flutter/material.dart';
import 'package:gigi_store/components/custom_bottom_nav_bar.dart';
import 'package:gigi_store/enums.dart';
import 'package:gigi_store/screens/favourites/components/body.dart';

class FavouritesScreen extends StatelessWidget {
  static String routeName = "/favourites_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.favourite,
      ),
    );
  }
}