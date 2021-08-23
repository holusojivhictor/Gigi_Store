import 'package:flutter/material.dart';

import '../size_config.dart';

class CustomSuffix extends StatelessWidget {
  const CustomSuffix({required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0,
          getProportionateScreenWidth(8),
          getProportionateScreenWidth(8),
          getProportionateScreenWidth(8)),
      child: Icon(icon, size: getProportionateScreenHeight(20)),
    );
  }
}