import 'package:flutter/material.dart';

class ChatSearchField extends StatelessWidget {
  const ChatSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 10),
          fillColor: Colors.grey[200],
          filled: true,
          prefixIcon: const Icon(Icons.search),
          hintText: "Search",
          suffixIcon: const Icon(Icons.mic),
          constraints: const BoxConstraints(
            maxHeight: 45,
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(6),
            ),
          ),
        ),
      ),
    );
  }
}
