import 'package:chat_bot/presentation/Screens/chat_history_screen.dart';
import 'package:chat_bot/presentation/Screens/chat/chat_screen.dart';
import 'package:chat_bot/presentation/Screens/profile_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  //list of screens
  final List<Widget> _screens = [
    const ChatHistoryScreen(),
    const ChatScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        //physics: const BouncingScrollPhysics(),
        children: _screens,
      ),
    );
  }
}