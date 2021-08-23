import 'package:flutter/material.dart';
import 'package:gigi_store/components/social_card.dart';
import 'package:gigi_store/screens/sign_up/components/sign_up_form.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.04),
              Text(
                "Register Account",
                style: headingStyle,
              ),
              SizedBox(height: getProportionateScreenHeight(15)),
              Text(
                "Please enter your email and we will send \nyou a link to return to your account",
                style: TextStyle(
                  color: Constants.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.08),
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight! * 0.08),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/images/icons8-google-48.png",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/images/logo-facebookpng-32214.png",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/images/icons8-twitter-48.png",
                    press: () {},
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Text("By continuing you confirm that you agree \nwith our terms and conditions.", style: TextStyle(
                  fontSize: getProportionateScreenWidth(6)), textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
