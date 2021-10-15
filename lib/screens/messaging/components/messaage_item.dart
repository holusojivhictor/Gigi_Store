class MessageItem {
  final String id;
  final String name;
  final String messageInput;
  final String profileImg;
  final DateTime date;
  final bool isComplete;

  MessageItem({
    required this.id,
    required this.name,
    required this.messageInput,
    required this.profileImg,
    required this.date,
    this.isComplete = false,
});

  MessageItem copyWith({
    String? id,
    String? name,
    String? messageInput,
    String? profileImg,
    DateTime? date,
    bool? isComplete,
  }) {
    return MessageItem(
      id: id ?? this.id,
      name: name ?? this.name,
      messageInput: messageInput ?? this.messageInput,
      profileImg: profileImg ?? this.profileImg,
      date: date ?? this.date,
      isComplete: isComplete ?? this.isComplete,
    );
  }
}