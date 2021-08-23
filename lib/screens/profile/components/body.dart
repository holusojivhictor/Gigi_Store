import 'package:flutter/material.dart';
import 'package:gigi_store/screens/profile/components/profile_menu.dart';
import 'package:gigi_store/screens/profile/components/profile_picture.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePicture(),
        SizedBox(height: 20),
        ProfileMenu(
          press: () {},
          text: "My Account",
          icon: Icons.person_outline,
        ),
        ProfileMenu(
          press: () {},
          text: "Notifications",
          icon: Icons.notifications_outlined,
        ),
        ProfileMenu(
          press: () {},
          text: "Settings",
          icon: Icons.settings,
        ),
        ProfileMenu(
          press: () {},
          text: "Help Center",
          icon: Icons.help_outline,
        ),
        ProfileMenu(
          press: () {},
          text: "Log Out",
          icon: Icons.logout_outlined,
        ),
      ],
    );
  }
}