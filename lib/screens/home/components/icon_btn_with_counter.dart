import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    required this.icon, this.numOfItems = 0, required this.press,
  });

  final IconData icon;
  final int numOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(5)),
            height: getProportionateScreenWidth(20),
            width: getProportionateScreenWidth(20),
            decoration: BoxDecoration(
              color: Constants.kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 20),
          ),
          if (numOfItems != 0)
            Positioned(
              right: 0,
              child: Container(
                height: getProportionateScreenWidth(6),
                width: getProportionateScreenWidth(6),
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Constants.white),
                ),
                child: Center(
                  child: Text("$numOfItems", style: TextStyle(
                      fontSize: getProportionateScreenWidth(5),
                      height: 1,
                      color: Constants.white, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}