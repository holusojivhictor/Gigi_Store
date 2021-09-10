import 'package:flutter/material.dart';
import 'package:gigi_store/screens/specials_screen/components/body.dart';

class SpecialsScreen extends StatelessWidget {
  static String routeName = "/specials_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}