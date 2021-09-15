import 'package:flutter/material.dart';

import '../size_config.dart';

class SocialCard extends StatefulWidget {
  const SocialCard({required this.icon, required this.press});
  final String icon;
  final Function()? press;

  @override
  State<SocialCard> createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: widget.press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(2)),
        padding: EdgeInsets.only(
          top: getProportionateScreenWidth(4),
          bottom: getProportionateScreenWidth(3),
        ),
        height: getProportionateScreenHeight(35),
        width: getProportionateScreenWidth(20),
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: Image.asset(widget.icon),
      ),
    );
  }
}