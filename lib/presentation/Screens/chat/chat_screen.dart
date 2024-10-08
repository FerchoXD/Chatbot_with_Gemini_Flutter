import 'package:chat_bot/presentation/widgets/chat/her_message_bubble.dart';
import 'package:chat_bot/presentation/widgets/chat/my_message_bubble.dart';
import 'package:chat_bot/presentation/widgets/shared/message_field_box.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(padding: EdgeInsets.all(9.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage('https://imgs.search.brave.com/cBfYOGcNzu8dcTRSH3t1v3vQ7-GbZ1JodmRk3jRRHq4/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9mcmVl/bG9nb3BuZy5jb20v/aW1hZ2VzL2FsbF9p/bWcvMTY4MTAzODgw/MGNoYXRncHQtbG9n/by1ibGFjay5wbmc'),
        ),
        ),
        title: Text('GenesisAI 🤖 ', style: Theme.of(context).textTheme.titleLarge,),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index){
              return (index % 2 == 0) 
              ? const MyMessageBubble()
              : const HerMessageBubble();
            })),
            
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}