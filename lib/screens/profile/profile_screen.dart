import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gigi_store/screens/profile/components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        leading: SizedBox(),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}