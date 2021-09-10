import 'package:flutter/material.dart';
import 'package:gigi_store/screens/cart/cart_screen.dart';
import 'package:gigi_store/screens/home/components/icon_btn_with_counter.dart';
import 'package:gigi_store/size_config.dart';

class CategoriesHeader extends StatelessWidget {
  final String text;
  const CategoriesHeader({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: Row(
        children: [
          Text(text,
            style: TextStyle(fontSize: getProportionateScreenWidth(8)),
          ),
          Spacer(),
          IconBtnWithCounter(
            icon: Icons.search,
            press: () {},
          ),
          IconBtnWithCounter(
            icon: Icons.shopping_cart_outlined,
            press: () => Navigator.pushNamed(context, CartScreen.routeName),
          ),
        ],
      ),
    );
  }
}