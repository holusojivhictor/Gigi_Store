import 'package:flutter/material.dart';
import 'package:gigi_store/screens/sign_up/sign_up_screen.dart';

import '../constants.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account?", style: TextStyle(
            fontSize: getProportionateScreenWidth(7))),
        SizedBox(width: getProportionateScreenWidth(2)),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SignUpScreen.routeName);
          },
          child: Text("Sign Up", style: TextStyle(
              fontSize: getProportionateScreenWidth(7), color: Constants.kPrimaryColor)),
        ),
      ],
    );
  }
}