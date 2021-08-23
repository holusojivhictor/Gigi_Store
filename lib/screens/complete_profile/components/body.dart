import 'package:flutter/material.dart';
import 'package:gigi_store/screens/complete_profile/components/complete_profile_form.dart';
import 'package:gigi_store/size_config.dart';

import '../../../constants.dart';

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
                "Complete Profile",
                style: headingStyle,
              ),
              SizedBox(height: getProportionateScreenHeight(15)),
              Text(
                "Complete your details or continue \nwith social media",
                style: TextStyle(
                  color: Constants.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.05),
              CompleteProfileForm(),
              SizedBox(height: SizeConfig.screenHeight! * 0.08),
              Text("By continuing you confirm that you agree \nwith our terms and conditions.", style: TextStyle(
                  fontSize: getProportionateScreenWidth(6)), textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}