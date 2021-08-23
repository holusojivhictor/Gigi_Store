import 'package:flutter/material.dart';
import 'package:gigi_store/screens/login_success/components/body.dart';

class LogInSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Login Success"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}