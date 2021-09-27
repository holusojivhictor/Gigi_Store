import 'package:flutter/material.dart';
import 'package:gigi_store/models/chat_users.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ContactCard extends StatelessWidget {
  final GestureTapCallback press;
  final ChatUsers chatUsers;
  ContactCard({required this.press, required this.chatUsers});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 10),
      onTap: press,
      leading: CircleAvatar(
        radius: 23,
        child: Image.asset(chatUsers.image),
        backgroundColor: Constants.kSecondaryColor.withOpacity(0.2),
      ),
      title: Text(chatUsers.name,
        style: TextStyle(
          color: Constants.black,
          fontSize: getProportionateScreenWidth(7),
        ),
      ),
      subtitle: Text(chatUsers.subtitle,
        style: TextStyle(
          color: Constants.black,
          fontSize: getProportionateScreenWidth(5),
        ),
      ),
      trailing: Text(chatUsers.date,
        style: TextStyle(
          color: Constants.black.withOpacity(0.8),
          fontSize: getProportionateScreenWidth(5),
        ),
      ),
    );
  }
}