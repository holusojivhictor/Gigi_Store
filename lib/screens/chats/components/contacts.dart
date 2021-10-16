import 'package:flutter/material.dart';
import 'package:gigi_store/models/chat_users.dart';
import 'package:gigi_store/screens/chats/components/contact_card.dart';

import 'chat_page.dart';

class Contacts extends StatelessWidget {
  static String routeName = "contacts";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
      ),
    );
  }
}