import 'package:flutter/material.dart';
import 'package:gigi_store/components/default_button.dart';
import 'package:gigi_store/screens/home/home_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight! * 0.04),
            Container(
              margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(2)),
              padding: EdgeInsets.only(
                top: getProportionateScreenWidth(4),
                bottom: getProportionateScreenWidth(3),
              ),
              height: getProportionateScreenHeight(100),
              width: getProportionateScreenWidth(100),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.check, size: 40),
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Text(
              "Log In Success",
              style: TextStyle(
                color: Constants.black,
                fontSize: getProportionateScreenWidth(13),
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            DefaultButton(
              text: "Back to Home",
              press: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}