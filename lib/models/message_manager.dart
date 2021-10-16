import 'package:flutter/material.dart';
import 'package:gigi_store/screens/messaging/components/message_item.dart';

class MessageManager extends ChangeNotifier {
  final _messageItems = <MessageItem>[];

  List<MessageItem> get messageItems => List.unmodifiable(_messageItems);

  void addItem(MessageItem item) {
    _messageItems.add(item);
    notifyListeners();
  }

  void updateItem(MessageItem item, int index) {
    _messageItems[index] = item;
    notifyListeners();
  }

  void completeItem(int index, bool change) {
    final item = _messageItems[index];
    _messageItems[index] = item.copyWith(isComplete: change);
    notifyListeners();
  }

}