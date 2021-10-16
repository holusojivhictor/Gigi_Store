import 'package:flutter/material.dart';
import 'package:gigi_store/models/chat_users.dart';
import 'package:gigi_store/screens/chats/components/chat_app_bar.dart';
import 'package:gigi_store/screens/messaging/components/message_item.dart';

class MessagePage extends StatefulWidget {
  final Function(MessageItem) onCreate;
  final Function(MessageItem) onUpdate;
  final MessageItem? originalItem;
  final bool isUpdating;

  const MessagePage({
    Key? key,
    required this.onCreate,
    required this.onUpdate,
    this.originalItem,
  }) : isUpdating = (originalItem != null), super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {

  @override
  Widget build(BuildContext context) {
    // final arguments = ModalRoute.of(context)!.settings.arguments as UserDetailsArgument;

    return Scaffold(
      appBar: AppBar(title: Text('Explore')),
      body: Center(
        child: Text('Explore'),
      ),
    );
  }
}

class UserDetailsArgument {
  final ChatUsers userDetails;

  UserDetailsArgument({required this.userDetails});
}