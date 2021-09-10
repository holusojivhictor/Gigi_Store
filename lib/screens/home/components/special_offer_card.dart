import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({required this.press, required this.image, required this.category, required this.numOfBrands});

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(110),
          height: getProportionateScreenWidth(55),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF343434).withOpacity(0.4),
                          Color(0xFF343434).withOpacity(0.15),
                        ],
                      )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(8),
                    vertical: getProportionateScreenWidth(5),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Constants.white),
                      children: [
                        TextSpan(text: "$category\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(8),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "$numOfBrands Brands"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}