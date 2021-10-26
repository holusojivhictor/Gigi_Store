import 'package:flutter/material.dart';
import 'package:gigi_store/constants.dart';
import 'package:gigi_store/models/chat_users.dart';
import 'package:gigi_store/screens/chats/components/chat_app_bar.dart';
import 'package:gigi_store/screens/messaging/components/message_item.dart';

class MessagePage extends StatefulWidget {
  final ChatUsers chatUser;
  final Function(MessageItem) onCreate;
  final Function(MessageItem) onUpdate;
  final MessageItem? originalItem;
  final bool isUpdating;

  const MessagePage({
    Key? key,
    required this.chatUser,
    required this.onCreate,
    required this.onUpdate,
    this.originalItem,
  }) : isUpdating = (originalItem != null), super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  final _textController = TextEditingController();
  String _text = '';

  @override
  void initState() {
    final originalItem = widget.originalItem;
    if (originalItem != null) {
      _textController.text = originalItem.messageInput;
      _text = originalItem.messageInput;
    }

    _textController.addListener(() {
      setState(() {
        _text = _textController.text;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatAppBar(
        name: widget.chatUser.name,
        status: widget.chatUser.status,
        image: widget.chatUser.image,
      ),
      body: Column(
        children: [
          buildMessageField(),
        ],
      ),
    );
  }

  Widget buildMessageField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: _textController,
          decoration: InputDecoration(
            hintText: 'Type a message',
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Constants.kPrimaryColor),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Constants.kPrimaryColor),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Constants.kPrimaryColor),
            ),
          ),
        ),
      ],
    );
  }
}