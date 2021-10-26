import 'package:flutter/material.dart';
import 'package:gigi_store/models/chat_users.dart';
import 'package:gigi_store/screens/chats/components/message_body.dart';
import 'package:gigi_store/screens/chats/components/message_state.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import 'chat_app_bar.dart';

class ChatPage extends StatefulWidget {
  static String routeName = "/chat_page";

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

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
            child: Consumer<MessageState> (
              builder: (context, appState, _) => MessageDisplay(
                messages: appState.messageBoards,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: Constants.kPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.2),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Text('Today', style: TextStyle(fontSize: 11)),
                ),
              ],
            ),
          ),
          Consumer<MessageState>(
            builder: (context, appState, _) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AddMessage(
                  addMessage: (String message) =>
                      appState.addMessageToBoard(message),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UserDetailsArgument {
  final ChatUsers userDetails;

  UserDetailsArgument({required this.userDetails});
}