import 'package:flutter/material.dart';

class ChatsGroupTitle extends StatelessWidget {
  const ChatsGroupTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(title),
    );
  }
}
