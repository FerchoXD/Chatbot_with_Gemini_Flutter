import 'package:chat_bot/config/themes/my_theme.dart';
import 'package:chat_bot/presentation/Screens/chat/chat_screen.dart';
import 'package:chat_bot/presentation/Screens/home_screen.dart';
import 'package:chat_bot/presentation/providers/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}
  
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider()),
      ],
      child: MaterialApp(
        theme: AppTheme.getTheme(false), 
        debugShowCheckedModeBanner: false,
        home: const ChatScreen(),
      ),
    );
  }
}

