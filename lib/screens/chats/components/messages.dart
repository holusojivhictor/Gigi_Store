import 'package:flutter/material.dart';
import 'dart:async';
import 'package:gigi_store/size_config.dart';

class MessageBoard {
  MessageBoard({required this.name, required this.message});
  final String name;
  final String message;
}

class Messages extends StatefulWidget {
  Messages({required this.addMessage, required this.messages});
  final FutureOr<void> Function(String message) addMessage;
  final List<MessageBoard> messages;

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  final _formKey = GlobalKey<FormState>(debugLabel: '_MessagesState');
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(5), vertical: getProportionateScreenWidth(10)),
          child: Form(
            key: _formKey,
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Leave a message',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your message to continue';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(width: 10),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.deepPurple)),
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      await widget.addMessage(_controller.text);
                      _controller.clear();
                    }
                  },
                  child: Row(
                    children: [
                      Icon(Icons.send),
                      SizedBox(width: 4),
                      Text('SEND'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        for (var message in widget.messages)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
            child: Text(
              '${message.name}: ${message.message}',
              style: TextStyle(fontSize: 18),
            ),
          ),
        SizedBox(height: 8),
      ],
    );
  }
}