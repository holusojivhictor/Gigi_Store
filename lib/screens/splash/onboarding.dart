import 'package:flutter/material.dart';
import 'package:gigi_store/screens/splash/components/body.dart';
import 'package:gigi_store/size_config.dart';

class OnBoarding extends StatefulWidget {
  static String routeName = "/Splash";

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}