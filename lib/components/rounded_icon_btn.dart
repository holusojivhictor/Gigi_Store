import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class RoundedIconBtn extends StatelessWidget {
  final IconData icon;
  final GestureTapCallback press;

  const RoundedIconBtn({required this.press, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(2)),
      child: SizedBox(
        height: getProportionateScreenWidth(17),
        width: getProportionateScreenWidth(17),
        child: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            backgroundColor: MaterialStateProperty.all(Constants.white),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            )),
          ),
          onPressed: press,
          child: Icon(icon, color: Constants.black, size: getProportionateScreenWidth(8)),
        ),
      ),
    );
  }
}