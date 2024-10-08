

import 'package:chat_bot/domain/entities/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier{
  List<Message> messages = [
    const Message(text: 'Hello', fromWho: FromWho.me),
    const Message(text: 'Hi', fromWho: FromWho.me),
    const Message(text: 'How are you?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async{
    //TODO: Implement the logic to send a message
  }
  
}
