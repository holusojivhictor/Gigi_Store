import 'package:flutter/material.dart';
import 'package:gigi_store/models/chat_users.dart';
import 'package:gigi_store/screens/chats/components/message_state.dart';
import 'package:gigi_store/screens/messaging/components/message_item.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class MessageTile extends StatefulWidget {
  final MessageItem item;
  final List<MessageBoard> messages;
  final ChatUsers chatUsers;
  MessageTile({required this.chatUsers, required this.item, required this.messages});

  @override
  State<MessageTile> createState() => _MessageTileState();
}

class _MessageTileState extends State<MessageTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 10),
      leading: CircleAvatar(
        radius: 23,
        child: Image.asset(widget.chatUsers.image),
        backgroundColor: Constants.kSecondaryColor.withOpacity(0.2),
      ),
      title: Text(widget.chatUsers.name,
        style: TextStyle(
          color: Constants.black,
          fontSize: getProportionateScreenWidth(7.5),
        ),
      ),
      subtitle: Row(
        children: [
          for (var message in widget.messages)
            Text('${message.message}',
            maxLines: 1,
            style: TextStyle(
              color: Constants.black.withOpacity(0.6),
              fontSize: getProportionateScreenWidth(6),
            ),
          ),
        ],
      ),
    );
  }
}