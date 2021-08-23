import 'package:flutter/material.dart';
import 'package:gigi_store/components/default_button.dart';
import 'package:gigi_store/constants.dart';
import 'package:gigi_store/models/products.dart';
import 'package:gigi_store/screens/details/components/product_description.dart';
import 'package:gigi_store/screens/details/components/product_images.dart';
import 'package:gigi_store/screens/details/components/top_rounded_container.dart';
import 'package:gigi_store/size_config.dart';

import 'color_dots.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Constants.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressOnSeeMore: () {},
                ),
                TopRoundedContainer(
                  color: Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      ColorDots(product: product),
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth! * 0.15,
                            right: SizeConfig.screenWidth! * 0.15,
                            top: getProportionateScreenWidth(8),
                            bottom: getProportionateScreenWidth(20),
                          ),
                          child: DefaultButton(
                            text: "Add to Cart",
                            press: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}