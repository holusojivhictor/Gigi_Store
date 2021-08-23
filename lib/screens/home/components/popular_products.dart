import 'package:flutter/material.dart';
import 'package:gigi_store/components/product_card.dart';
import 'package:gigi_store/models/products.dart';
import 'package:gigi_store/screens/details/details_screen.dart';
import 'package:gigi_store/screens/home/components/section_title.dart';

import '../../../size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Popular Products",
          press: () {},
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                    (index) => ProductCard(
                      product: demoProducts[index],
                      press: () {
                        Navigator.pushNamed(context, DetailsScreen.routeName);
                      },
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(10)),
            ],
          ),
        ),
      ],
    );
  }
}