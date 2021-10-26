import 'package:flutter/material.dart';
import 'dart:async';
import 'package:gigi_store/size_config.dart';

import '../../../constants.dart';

class MessageBoard {
  MessageBoard({required this.name, required this.message});
  final String name;
  final String message;
}

class AddMessage extends StatefulWidget {
  AddMessage({required this.addMessage});
  final FutureOr<void> Function(String message) addMessage;

  @override
  State<AddMessage> createState() => _AddMessageState();
}

class _AddMessageState extends State<AddMessage> {
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
                      border: Border.all(color: Constants.kPrimaryColor),
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
      ],
    );
  }

  InputDecoration inputDecoration() {
    OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: Constants.kPrimaryColor),
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


class MessageDisplay extends StatefulWidget {
  final List<MessageBoard> messages;
  MessageDisplay({required this.messages});

  @override
  State<MessageDisplay> createState() => _MessageDisplayState();
}

class _MessageDisplayState extends State<MessageDisplay> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      reverse: true,
      children: [
        for (var message in widget.messages)
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: 350,
                  ),
                  padding: EdgeInsets.all(Constants.kPadding),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.2),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Text(
                    '${message.message}',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}