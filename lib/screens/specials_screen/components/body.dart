import 'package:flutter/material.dart';
import 'package:gigi_store/components/alt_product_card.dart';
import 'package:gigi_store/models/Products.dart';
import 'package:gigi_store/screens/details/details_screen.dart';
import 'package:gigi_store/screens/home/components/section_title.dart';
import 'package:gigi_store/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              ...List.generate(
                allCategories.length,
                (index) => Column(
                  children: [
                    SizedBox(height: getProportionateScreenWidth(10)),
                    SectionTitle(
                      text: allCategories[index].sectionTitle,
                      press: () {},
                    ),
                    SizedBox(height: getProportionateScreenWidth(10)),
                    ...List.generate(
                      allCategories[index].allCategoriesProducts.length,
                      (index) => AltProductCard(
                        product: allCategories[index].allCategoriesProducts[index],
                        press: () {
                          Navigator.pushNamed(context, DetailsScreen.routeName,
                            arguments: ProductDetailsArguments(
                                product: allCategories[index].allCategoriesProducts[index]),
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
