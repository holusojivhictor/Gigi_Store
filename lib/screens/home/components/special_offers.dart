import 'package:flutter/material.dart';
import 'package:gigi_store/models/Products.dart';
import 'package:gigi_store/screens/home/components/section_title.dart';
import 'package:gigi_store/screens/home/components/special_offer_card.dart';
import 'package:gigi_store/screens/specials_screen/specials_screen.dart';

import '../../../size_config.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Special for you",
          press: () {},
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/open-laptop.jpg",
                category: "Smartphones",
                numOfBrands: 4,
                press: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return SpecialsScreen(
                          appBarText: "Smartphones",
                          specialsIndex: allCategories[0],
                        );
                      },
                    ),
                  );
                },
              ),
              SpecialOfferCard(
                image: "assets/images/a-piece-of-garment.jpg",
                category: "Fashion",
                numOfBrands: 10,
                press: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return SpecialsScreen(
                          appBarText: "Fashion",
                          specialsIndex: allCategories[1],
                        );
                      },
                    ),
                  );
                },
              ),
              SizedBox(width: getProportionateScreenWidth(10)),
            ],
          ),
        ),
      ],
    );
  }
}
