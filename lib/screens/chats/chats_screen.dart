import 'package:flutter/material.dart';
import 'package:gigi_store/components/custom_bottom_nav_bar.dart';
import 'package:gigi_store/enums.dart';
import 'package:gigi_store/screens/chats/components/body.dart';

class ChatsScreen extends StatelessWidget {
  static String routeName = "/chats_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.message,
      ),
    );
  }
}