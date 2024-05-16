import 'package:flutter/material.dart';

import '../widgets/app_bottom_navigation_bar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Text(
                "Inbox",
                style: TextStyle(),
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                  "assets/images/me.jpeg",
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}
