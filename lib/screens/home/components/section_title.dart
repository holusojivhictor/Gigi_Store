import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({required this.text, required this.press});

  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: TextStyle(
            color: Constants.black,
            fontSize: getProportionateScreenWidth(8),
          )),
          GestureDetector(
            onTap: press,
            child: Text("See More"),
          ),
        ],
      ),
    );
  }
}