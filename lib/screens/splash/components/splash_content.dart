import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {

  final String? text, image, title;
  const SplashContent({required this.image, required this.text, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
            image!,
            height: getProportionateScreenHeight(350),
            width: getProportionateScreenWidth(250),
        ),
        Spacer(flex: 2),
        Padding(
          padding: const EdgeInsets.all(Constants.kPadding),
          child: Text(title!,style: TextStyle(
            fontSize: getProportionateScreenWidth(9),
            fontWeight: FontWeight.bold,
          ),
              textAlign: TextAlign.center),
        ),
        Padding(
          padding: const EdgeInsets.all(Constants.kPadding),
          child: Text(text!,style: TextStyle(
            fontSize: getProportionateScreenWidth(7),
          ),
              textAlign: TextAlign.center),
        ),
      ],
    );
  }
}