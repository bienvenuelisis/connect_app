import 'package:connect_app/android/widgets/chat_message_tile_preview.dart';
import 'package:connect_app/android/widgets/chat_screen_app_bar.dart';
import 'package:connect_app/android/widgets/chat_search_field.dart';
import 'package:connect_app/android/widgets/chats_group_title.dart';
import 'package:flutter/material.dart';

class ChatScreenBody extends StatelessWidget {
  const ChatScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
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
    );
  }
}
