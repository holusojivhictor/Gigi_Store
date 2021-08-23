import 'package:flutter/material.dart';
import 'package:gigi_store/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}