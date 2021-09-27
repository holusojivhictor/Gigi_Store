import 'package:flutter/material.dart';
import 'package:gigi_store/components/icon_button_wout_counter.dart';
import 'package:gigi_store/models/chat_users.dart';
import 'package:gigi_store/screens/chats/components/message_body.dart';
import 'package:gigi_store/size_config.dart';

import '../../../constants.dart';

class ChatPage extends StatelessWidget {
  static String routeName = "/chat_page";

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as UserDetailsArgument;
    return Scaffold(
      appBar: ChatAppBar(
        name: arguments.userDetails.name,
        status: arguments.userDetails.status,
        image: arguments.userDetails.image,
      ),
      body: Column(
        children: [
          Flexible(
            child: ListView(
              children: [],
            ),
          ),
          MessageBody(),
        ],
      ),
    );
  }
}

class UserDetailsArgument {
  final ChatUsers userDetails;

  UserDetailsArgument({required this.userDetails});
}


class ChatAppBar extends PreferredSize {
  ChatAppBar({required this.status, required this.name, required this.image}) : super(
    preferredSize: Size.fromHeight(AppBar().preferredSize.height),
    child: Row(),
  );

  final String name, status, image;

  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Constants.kSecondaryColor.withOpacity(0.1),
      flexibleSpace: SafeArea(
        child: Container(
          padding: EdgeInsets.only(right: getProportionateScreenWidth(10)),
          child: Row(
            children: [
              SizedBox(width: 45),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset(image),
                radius: 22,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(name,
                      style: TextStyle(fontSize: 18)),
                  SizedBox(height: 5),
                  Text(status,
                      style: TextStyle(fontSize: 14)),
                ],
              ),
            ],
          ),
        ),
      ),
      actions: [
        IconBtnWithOutCounter(
          icon: Icons.more_vert,
          press: () {},
        ),
      ],
    );
  }
}