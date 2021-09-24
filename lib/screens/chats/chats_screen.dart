import 'package:flutter/material.dart';
import 'package:gigi_store/components/custom_bottom_nav_bar.dart';
import 'package:gigi_store/components/icon_button_wout_counter.dart';
import 'package:gigi_store/enums.dart';
import 'package:gigi_store/screens/cart/cart_screen.dart';
import 'package:gigi_store/screens/chats/components/chat_page.dart';
import 'package:gigi_store/screens/chats/components/message_body.dart';

import '../../constants.dart';

class ChatsScreen extends StatelessWidget {
  static String routeName = "/chats_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: [],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.message,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Constants.kPrimaryColor.withOpacity(0.8),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => ChatPage()));
        },
        child: Icon(Icons.add),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Constants.kSecondaryColor.withOpacity(0.2),
      automaticallyImplyLeading: false,
      title: Text(
        "Messages",
        style: TextStyle(color: Constants.black),
      ),
      actions: [
        IconBtnWithOutCounter(
          icon: Icons.search,
          press: () {},
        ),
        SizedBox(width: 10),
        IconBtnWithOutCounter(
          icon: Icons.shopping_cart_outlined,
          press: () => Navigator.pushNamed(context, CartScreen.routeName),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}