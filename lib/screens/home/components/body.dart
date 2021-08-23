import 'package:flutter/material.dart';
import 'package:gigi_store/screens/home/components/popular_products.dart';
import 'package:gigi_store/screens/home/components/special_offers.dart';
import 'package:gigi_store/size_config.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(10)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(10)),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(15)),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(15)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(15)),
          ],
        ),
      ),
    );
  }
}