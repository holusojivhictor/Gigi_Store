import 'package:flutter/material.dart';
import 'package:gigi_store/components/icon_button_wout_counter.dart';
import 'package:gigi_store/screens/chats/components/message_body.dart';
import 'package:gigi_store/size_config.dart';

import '../../../constants.dart';

class ChatPage extends StatelessWidget {
  static String routeName = "/chat_page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
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

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Constants.kSecondaryColor.withOpacity(0.1),
      flexibleSpace: SafeArea(
        child: Container(
          padding: EdgeInsets.only(right: getProportionateScreenWidth(10)),
          child: Row(
            children: [
              SizedBox(width: 50),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('AZ',
                    style: TextStyle(color: Colors.grey.shade500)),
                radius: 25,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Profile Name',
                      style: TextStyle(fontSize: 18)),
                  SizedBox(height: 5),
                  Text('Active',
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