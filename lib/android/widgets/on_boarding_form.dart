import 'package:connect_app/commons/widgets/log_in_with_google_icon_and_text.dart';
import 'package:connect_app/commons/widgets/on_boarding_or_text_with_dividers.dart';
import 'package:flutter/material.dart';

class OnBoardingForm extends StatelessWidget {
  const OnBoardingForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Username or Email"),
          const _Gap(),
          TextField(
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.person),
              fillColor: Colors.grey[200],
              filled: true,
              constraints: const BoxConstraints(
                maxHeight: 54,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const _Gap(),
          const Text("Password"),
          const _Gap(),
          TextField(
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.password),
              suffixIcon: const Icon(Icons.visibility),
              fillColor: Colors.grey[200],
              filled: true,
              constraints: const BoxConstraints(
                maxHeight: 54,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const _Gap(),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              fixedSize: Size(size.width - 36, 45),
              backgroundColor: Theme.of(context).primaryColor,
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
            child: const Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          const _Gap(),
          const _Gap(),
          const OnBoardingOrTextWithDividers(),
          const _Gap(),
          const _Gap(),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              fixedSize: Size(size.width - 36, 45),
              backgroundColor: Colors.white,
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
            child: const LogInWithGoogleIconAndText(),
          ),
        ],
      ),
    );
  }
}

class _Gap extends StatelessWidget {
  const _Gap();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 12,
    );
  }
}
