import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Username or Email"),
            const SizedBox(
              height: 12,
            ),
            CupertinoTextField(
              style: const TextStyle(
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(),
              ),
            ),
            const Text("Password"),
          ],
        ),
      ),
    );
  }
}
