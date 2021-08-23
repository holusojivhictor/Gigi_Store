import 'package:flutter/material.dart';
import 'package:gigi_store/size_config.dart';

import '../../../constants.dart';
import 'otp_form.dart';

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
              SizedBox(height: SizeConfig.screenHeight! * 0.05),
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              SizedBox(height: getProportionateScreenHeight(15)),
              Text(
                "We sent your code to +234 812 002 ****",
                style: TextStyle(
                  color: Constants.black,
                ),
                textAlign: TextAlign.center,
              ),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight! * 0.15),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight! * 0.15),
              GestureDetector(
                onTap: () {},
                  child: Text("Resend OTP Code", style: TextStyle(decoration: TextDecoration.underline))),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expire in "),
        TweenAnimationBuilder(
          tween: IntTween(begin: 30, end: 0),
          duration: Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "00:$value",
            style: TextStyle(color: Constants.kPrimaryColor),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}