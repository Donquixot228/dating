import 'package:equatable/equatable.dart';

import 'models.dart';

class Chat extends Equatable {
  final int id;
  final int userId;
  final int matchedUserID;
  final List<Message> messages;

  Chat({
    required this.id,
    required this.userId,
    required this.matchedUserID,
    required this.messages,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        userId,
    matchedUserID,
        messages,
      ];

  static List<Chat> chats = [
    Chat(
      id: 1,
      userId: 1,
      matchedUserID: 2,
      messages: Message.messages
          .where((message) =>
              (message.senderId == 1 && message.receiverId == 2) ||
              (message.senderId == 2 && message.receiverId == 1))
          .toList(),
    ),
    Chat(
      id: 2,
      userId: 1,
      matchedUserID: 3,
      messages: Message.messages
          .where((message) =>
      (message.senderId == 1 && message.receiverId == 3) ||
          (message.senderId == 3 && message.receiverId == 1))
          .toList(),
    ),
  ];
}
