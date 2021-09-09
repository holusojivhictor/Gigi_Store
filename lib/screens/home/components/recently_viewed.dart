import 'package:flutter/material.dart';
import 'package:gigi_store/components/product_card.dart';
import 'package:gigi_store/models/Products.dart';
import 'package:gigi_store/screens/details/details_screen.dart';
import 'package:gigi_store/screens/home/components/section_title.dart';

import '../../../size_config.dart';

class RecentlyViewed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Recently viewed",
          press: () {},
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                recentlyViewed.length,
                  (index) => ProductCard(
                    product: recentlyViewed[index],
                    press: () {
                      Navigator.pushNamed(context, DetailsScreen.routeName,
                      arguments: ProductDetailsArguments(product: recentlyViewed[index]));
                    },
                  ),
              ),
              SizedBox(width: getProportionateScreenWidth(10)),
            ],
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(10)),
      ],
    );
  }
}