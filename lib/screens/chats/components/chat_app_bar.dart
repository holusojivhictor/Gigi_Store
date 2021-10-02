import 'package:flutter/material.dart';
import 'package:gigi_store/components/icon_button_wout_counter.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

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