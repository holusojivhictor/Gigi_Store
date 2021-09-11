import 'package:flutter/material.dart';
import 'package:gigi_store/models/Cart.dart';
import 'package:gigi_store/screens/cart/components/body.dart';

import '../../constants.dart';
import 'components/check_out_card.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckOutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text("Your Cart",
            style: TextStyle(color: Constants.black),
          ),
          Text("${demoCarts.length} items",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
      centerTitle: true,
    );
  }
}
