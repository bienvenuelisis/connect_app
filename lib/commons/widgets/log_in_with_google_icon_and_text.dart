import 'package:flutter/material.dart';

class LogInWithGoogleIconAndText extends StatelessWidget {
  const LogInWithGoogleIconAndText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/google.png",
          width: 24,
        ),
        const SizedBox(
          width: 24,
        ),
        Text(
          "Login with Google",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
