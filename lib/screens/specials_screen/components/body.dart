import 'package:flutter/material.dart';
import 'package:gigi_store/components/alt_product_card.dart';
import 'package:gigi_store/models/Products.dart';
import 'package:gigi_store/screens/details/details_screen.dart';
import 'package:gigi_store/screens/home/components/section_title.dart';
import 'package:gigi_store/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: getProportionateScreenWidth(20)),
        SectionTitle(
          text: "Samsung",
          press: () {},
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        Column(
          children: [
            ...List.generate(
              smartPhonesProducts.length,
                (index) => AltProductCard(
                  product: smartPhonesProducts[index],
                  press: () {
                    Navigator.pushNamed(context, DetailsScreen.routeName,
                        arguments: ProductDetailsArguments(product: smartPhonesProducts[index]),
                    );
                  },
                  pressMenu: () {},
                ),
            ),
          ],
        ),
      ],
    );
  }
}