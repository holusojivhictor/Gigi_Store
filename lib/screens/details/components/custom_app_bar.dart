import 'package:flutter/material.dart';
import 'package:gigi_store/components/rounded_icon_btn.dart';
import 'package:gigi_store/constants.dart';

import '../../../size_config.dart';

class CustomAppBar extends PreferredSize {
  CustomAppBar({required this.rating}) : super(
    preferredSize: Size.fromHeight(AppBar().preferredSize.height),
    child: Row(),
  );

  final double rating;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundedIconBtn(
              press: () => Navigator.pop(context),
              icon: Icons.arrow_back_ios,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: Constants.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Text(rating.toString(), style: TextStyle(
                    fontWeight: FontWeight.w600,
                  )),
                  const SizedBox(width: 5),
                  Icon(Icons.star, color: Colors.yellow, size: getProportionateScreenWidth(8)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}