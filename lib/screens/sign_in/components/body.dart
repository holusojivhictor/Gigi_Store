import 'package:flutter/material.dart';
import 'package:gigi_store/components/no_account_text.dart';
import 'package:gigi_store/components/social_card.dart';
import 'package:gigi_store/constants.dart';
import 'package:gigi_store/screens/sign_in/components/sign_form.dart';
import 'package:gigi_store/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight! * 0.04),
                Text("Welcome Back",
                    style: headingStyle,
                ),
                SizedBox(height: getProportionateScreenHeight(15)),
                Text("Sign in with your email and password \nor continue with social media",
                  style: TextStyle(
                    color: Constants.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight! * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight! * 0.1),
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
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}