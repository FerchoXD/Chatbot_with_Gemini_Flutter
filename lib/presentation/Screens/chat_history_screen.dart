import 'package:flutter/material.dart';

class ChatHistoryScreen extends StatelessWidget {
  const ChatHistoryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat history'),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}