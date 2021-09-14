import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class NotificationCard extends StatelessWidget {
  final String text, subtitle, image;
  final GestureTapCallback press;
  NotificationCard({required this.text, required this.image, required this.subtitle, required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 75,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Constants.kSecondaryColor.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image.asset(image, fit: BoxFit.contain),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text,
                        style: TextStyle(
                            color: Constants.black,
                            fontSize: getProportionateScreenWidth(7)),
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: getProportionateScreenWidth(5.5)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}