import 'package:flutter/material.dart';

import 'screens/chat_screen.dart';

class AndroidApp extends StatelessWidget {
  const AndroidApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Connect App",
      home: ChatScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
