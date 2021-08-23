import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key, required this.text, required this.icon, required this.press,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        onPressed: press,
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.all(20)),
          backgroundColor: MaterialStateProperty.all(Color(0xFFF5F6F9)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          )),
        ),
        child: Row(
          children: [
            Icon(icon, color: Constants.kPrimaryColor),
            SizedBox(width: 20),
            Expanded(
              child: Text(text,
                style: TextStyle(fontSize: 17, color: Constants.kTextColor),
              ),
            ),
            Icon(Icons.arrow_forward_ios, size: 20, color: Constants.black),
          ],
        ),
      ),
    );
  }
}