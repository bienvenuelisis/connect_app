import 'package:flutter/material.dart';

class ChatMessageTilePreview extends StatelessWidget {
  const ChatMessageTilePreview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage(
          "assets/images/me.jpeg",
        ),
      ),
      title: const Text("Harry Lewis"),
      subtitle: const Text(
        "Do you send those files?",
        style: TextStyle(
          fontSize: 12,
        ),
      ),
      trailing: Column(
        children: [
          const Text("09:10"),
          DecoratedBox(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: const SizedBox(
              width: 24,
              height: 24,
              child: Center(
                child: Text(
                  "1",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
