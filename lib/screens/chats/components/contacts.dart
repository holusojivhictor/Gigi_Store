import 'package:flutter/material.dart';
import 'package:gigi_store/components/icon_button_wout_counter.dart';
import 'package:gigi_store/models/chat_users.dart';
import 'package:gigi_store/screens/cart/cart_screen.dart';
import 'package:gigi_store/screens/chats/components/contact_card.dart';

import '../../../constants.dart';
import 'chat_page.dart';

class Contacts extends StatelessWidget {
  static String routeName = "contacts";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
              demoUsers.length,
                  (index) => Column(
                    children: [
                      ContactCard(
                        chatUsers: demoUsers[index],
                        press: () {
                          Navigator.pushNamed(context, ChatPage.routeName,
                            arguments: UserDetailsArgument(userDetails: demoUsers[index]),
                          );
                        },
                      ),
                      const Divider(height: 6),
                    ],
                  ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Constants.kSecondaryColor.withOpacity(0.2),
      automaticallyImplyLeading: false,
      title: Text(
        "Contacts",
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