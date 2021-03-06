import 'package:flutter/material.dart';
import 'package:gigi_store/components/notifications.dart';
import 'package:gigi_store/screens/cart/cart_screen.dart';
import 'package:gigi_store/screens/home/components/icon_btn_with_counter.dart';
import 'package:gigi_store/screens/home/components/search_field.dart';
import 'package:gigi_store/models/Products.dart';

import '../../../size_config.dart';

class HomeHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            icon: Icons.shopping_cart_outlined,
            press: () => Navigator.pushNamed(context, CartScreen.routeName),
          ),
          IconBtnWithCounter(
            icon: Icons.notifications_outlined,
            numOfItems: notificationProducts.length,
            press: () => Navigator.pushNamed(context, Notifications.routeName),
          ),
        ],
      ),
    );
  }
}