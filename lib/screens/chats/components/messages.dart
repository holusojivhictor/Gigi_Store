import 'package:flutter/material.dart';
import 'dart:async';
import 'package:gigi_store/size_config.dart';

import '../../../constants.dart';

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
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(2), vertical: getProportionateScreenWidth(2)),
          child: Form(
            key: _formKey,
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _controller,
                    decoration: inputDecoration(),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your message to continue';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: () async {
                    if (_formKey.currentState!.validate()) {
                      await widget.addMessage(_controller.text);
                      _controller.clear();
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.deepPurple),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(11),
                      child: Icon(Icons.send, color: Constants.kPrimaryColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        /*SizedBox(height: 10),
        for (var message in widget.messages)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
            child: Text(
              '${message.name}: ${message.message}',
              style: TextStyle(fontSize: 18),
            ),
          ),
        SizedBox(height: 8),*/
      ],
    );
  }

  InputDecoration inputDecoration() {
    OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: Constants.kTextColor),
      gapPadding: 10,
    );
    return InputDecoration(
      hintText: 'Type a message',
      contentPadding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 15,
      ),
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      border: outlineInputBorder,
    );
  }
}