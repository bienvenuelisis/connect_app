import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          const Text("Username or Email"),
          TextField(
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.person),
              suffixIcon: const Icon(Icons.visibility),
              fillColor: Colors.grey,
              filled: true,
              constraints: const BoxConstraints(
                maxHeight: 54,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const Text("Password"),
        ],
      ),
    );
  }
}
