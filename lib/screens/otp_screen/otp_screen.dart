import 'package:flutter/material.dart';
import 'package:gigi_store/screens/otp_screen/components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}