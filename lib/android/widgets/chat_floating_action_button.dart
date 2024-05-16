import 'package:flutter/material.dart';

class ChatFloatingActionButton extends StatelessWidget {
  const ChatFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FloatingActionButton(
      onPressed: null,
      child: Icon(
        Icons.message,
      ),
    );
  }
}
