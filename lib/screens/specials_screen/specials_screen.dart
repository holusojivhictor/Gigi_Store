import 'package:flutter/material.dart';
import 'package:gigi_store/components/icon_button_wout_counter.dart';
import 'package:gigi_store/constants.dart';
import 'package:gigi_store/models/Products.dart';
import 'package:gigi_store/screens/cart/cart_screen.dart';
import 'package:gigi_store/screens/specials_screen/components/body.dart';

class SpecialsScreen extends StatelessWidget {
  static String routeName = "/specials_screen";
  final String appBarText;
  final Specials specialsIndex;

  SpecialsScreen({required this.appBarText, required this.specialsIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.kSecondaryColor.withOpacity(0.2),
        automaticallyImplyLeading: false,
        title: Text(
          appBarText,
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
      ),
      body: Body(special: specialsIndex),
    );
  }
}