import 'package:flutter/material.dart';
import 'package:friendlychat/chat_screen.dart';

class FriendlychatApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Friendlychat',
      home: ChatScreen(),
    );
  }
}
