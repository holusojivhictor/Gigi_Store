import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class DefaultButton extends StatelessWidget {

  final String text;
  final Function()? press;
  const DefaultButton({required this.text, required this.press});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(45),
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Constants.kPrimaryColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ),
        onPressed: press,
        child: Text(text, style: TextStyle(
          fontSize: getProportionateScreenWidth(8),
          color: Constants.white,
        )),
      ),
    );
  }
}