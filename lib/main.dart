import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gigi_store/routes.dart';
import 'package:gigi_store/screens/splash/onboarding.dart';
import 'package:gigi_store/theme.dart';

void main() {
  runApp(GigiStore());
}

class GigiStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gigi Store',
      theme: theme(context),
      //home: OnBoarding(),
      initialRoute: OnBoarding.routeName,
      routes: routes,
    );
  }
}