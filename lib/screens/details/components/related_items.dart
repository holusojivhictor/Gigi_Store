import 'package:flutter/material.dart';
import 'package:gigi_store/components/product_card.dart';
import 'package:gigi_store/models/Products.dart';
import 'package:gigi_store/screens/home/components/section_title.dart';

import '../../../size_config.dart';
import '../details_screen.dart';

class RelatedItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Related Items",
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
                    Navigator.pushNamed(context, DetailsScreen.routeName,
                      arguments: ProductDetailsArguments(product: demoProducts[index]),
                    );
                  },
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(10)),
            ],
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
      ],
    );
  }
}