class MessageItem {
  final String id;
  final String messageInput;
  final bool isComplete;

  MessageItem({
    required this.id,
    required this.messageInput,
    this.isComplete = false,
});

  MessageItem copyWith({
    String? id,
    String? messageInput,
    bool? isComplete,
  }) {
    return MessageItem(
      id: id ?? this.id,
      messageInput: messageInput ?? this.messageInput,
      isComplete: isComplete ?? this.isComplete,
    );
  }
}