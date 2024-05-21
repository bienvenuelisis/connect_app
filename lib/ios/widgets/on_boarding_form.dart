import 'package:connect_app/commons/widgets/log_in_with_google_icon_and_text.dart';
import 'package:connect_app/commons/widgets/on_boarding_or_text_with_dividers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardingForm extends StatelessWidget {
  const OnBoardingForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return ColoredBox(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Username or Email"),
            const _Gap(),
            ConstrainedBox(
              constraints: const BoxConstraints(minHeight: 45),
              child: CupertinoTextField(
                style: const TextStyle(
                  color: Colors.white,
                ),
                prefix: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.person),
                ),
                placeholder: "Username",
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: Colors.grey[300]!,
                  ),
                ),
              ),
            ),
            const _Gap(),
            const Text("Password"),
            const _Gap(),
            ConstrainedBox(
              constraints: const BoxConstraints(minHeight: 45),
              child: CupertinoTextField(
                style: const TextStyle(
                  color: Colors.white,
                ),
                prefix: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.password),
                ),
                suffix: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.visibility),
                ),
                placeholder: "Password",
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: Colors.grey[300]!,
                  ),
                ),
              ),
            ),
            const _Gap(),
            const _Gap(),
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: size.width - 24,
                ),
                child: CupertinoButton.filled(
                  onPressed: () {},
                  child: const Text("Login"),
                ),
              ),
            ),
            const _Gap(),
            const _Gap(),
            const OnBoardingOrTextWithDividers(),
            const _Gap(),
            const _Gap(),
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: size.width - 24,
                ),
                child: CupertinoButton(
                  color: Colors.white,
                  onPressed: () {},
                  child: const LogInWithGoogleIconAndText(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Gap extends StatelessWidget {
  const _Gap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 12,
    );
  }
}
