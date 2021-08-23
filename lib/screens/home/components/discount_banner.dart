import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(10),
          vertical: getProportionateScreenWidth(10)),
      width: double.infinity,
      //height: 90,
      decoration: BoxDecoration(
        color: Constants.kPrimaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(TextSpan(
        text: "A Summer Surprise\n",
        style: TextStyle(color: Constants.white),
        children: [
          TextSpan(
            text: "Cashback 20%",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      )),
    );
  }
}