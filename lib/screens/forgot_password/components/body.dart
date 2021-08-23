import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'forgot_password_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.04),
              Text(
                "Forgot Password",
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
              SizedBox(height: SizeConfig.screenHeight! * 0.1),
              ForgotPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}
