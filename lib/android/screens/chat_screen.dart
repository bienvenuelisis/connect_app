import 'package:flutter/material.dart';

import '../widgets/app_bottom_navigation_bar.dart';
import '../widgets/chat_floating_action_button.dart';
import '../widgets/chat_message_tile_preview.dart';
import '../widgets/chat_screen_app_bar.dart';
import '../widgets/chat_search_field.dart';
import '../widgets/chats_group_title.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.sizeOf(context);

    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ChatScreenAppBar(),
          SizedBox(
            height: 12,
          ),
          ChatSearchField(),
          SizedBox(
            height: 12,
          ),
          ChatsGroupTitle(title: "Favorites"),
          ChatMessageTilePreview(),
          SizedBox(
            height: 12,
          ),
          ChatsGroupTitle(title: "Chat"),
          ChatMessageTilePreview(),
          ChatMessageTilePreview(),
          ChatMessageTilePreview(),
          ChatMessageTilePreview(),
        ],
      ),
      floatingActionButton: ChatFloatingActionButton(),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}
