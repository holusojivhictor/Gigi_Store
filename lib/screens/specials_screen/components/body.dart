import 'package:flutter/material.dart';
import 'package:gigi_store/components/alt_product_card.dart';
import 'package:gigi_store/models/Products.dart';
import 'package:gigi_store/screens/details/details_screen.dart';
import 'package:gigi_store/screens/home/components/section_title.dart';
import 'package:gigi_store/size_config.dart';

class Body extends StatelessWidget {
  final Specials special;
  Body({required this.special});

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              ...List.generate(
                special.allSpecials.length,
                (index) => Column(
                  children: [
                    SizedBox(height: getProportionateScreenWidth(10)),
                    SectionTitle(
                      text: special.allSpecials[index].sectionTitle,
                      press: () {},
                    ),
                    SizedBox(height: getProportionateScreenWidth(10)),
                    ...List.generate(
                      special.allSpecials[index].allCategoriesProducts.length,
                      (next) => AltProductCard(
                        product: special.allSpecials[index].allCategoriesProducts[next],
                        press: () {
                          Navigator.pushNamed(context, DetailsScreen.routeName,
                            arguments: ProductDetailsArguments(
                                product: special.allSpecials[index].allCategoriesProducts[next]),
                          );
                        },
                        pressMenu: () {},
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
