import 'package:flutter/material.dart';
import 'package:gigi_store/constants.dart';
import 'package:gigi_store/models/message_manager.dart';
import 'package:gigi_store/screens/messaging/components/empty_message_screen.dart';
import 'package:gigi_store/screens/messaging/components/user_profiles.dart';
import 'package:provider/provider.dart';

class MessageScreen extends StatelessWidget {
  static String routeName = 'message_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildMessageScreen(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Constants.kPrimaryColor,
        onPressed: () {
          Navigator.pushNamed(context, UserProfiles.routeName);
        },
        child: Icon(Icons.message),
      ),
    );
  }

  Widget buildMessageScreen() {
    return Consumer<MessageManager>(
      builder: (context, manager, child) {
        if (manager.messageItems.isNotEmpty) {
          return Container();
        } else {
          return const EmptyMessageScreen();
        }
      },
    );
  }
}