import 'package:flutter/material.dart';
import 'package:gigi_store/models/chat_users.dart';
import 'package:gigi_store/screens/chats/components/message_body.dart';
import 'package:gigi_store/screens/chats/components/messages.dart';
import 'package:provider/provider.dart';

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
          Consumer<MessageState>(
            builder: (context, appState, _) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (appState.loginState == ApplicationLoginState.loggedIn) ...[
                  AddMessage(
                    addMessage: (String message) =>
                        appState.addMessageToBoard(message),
                  ),
                ],
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