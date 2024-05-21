import 'package:connect_app/commons/controllers/navigations/onboarding.dart';
import 'package:connect_app/commons/widgets/gap.dart';
import 'package:connect_app/commons/widgets/log_in_with_google_icon_and_text.dart';
import 'package:connect_app/commons/widgets/on_boarding_or_text_with_dividers.dart';
import 'package:flutter/material.dart';

import '../../commons/controllers/states/onboarding.dart';
import '../../commons/widgets/password_field_visibility_icon_button.dart';

class OnBoardingLoginForm extends StatelessWidget {
  const OnBoardingLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Username or Email"),
          const Gap(),
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
          const Gap(),
          const Text("Password"),
          const Gap(),
          Builder(builder: (context) {
            final bool obscureText =
                onBoardingPasswordObscureText.reactiveValue(context);

            return TextField(
              style: const TextStyle(
                color: Colors.white,
              ),
              obscureText: obscureText,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.password),
                suffixIcon: PasswordFieldVisibilityIconButton(
                  obscureText: obscureText,
                  onTap: (value) {
                    onBoardingPasswordObscureText.value = value;
                  },
                ),
                fillColor: Colors.grey[200],
                filled: true,
                constraints: const BoxConstraints(
                  maxHeight: 54,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            );
          }),
          const Gap(),
          Center(
            child: ElevatedButton(
              onPressed: context.navigateToHomePageAfterAuthentication,
              style: ElevatedButton.styleFrom(
                fixedSize: Size(size.width - 24, 45),
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
          ),
          const Gap(),
          const Gap(),
          const OnBoardingOrTextWithDividers(),
          const Gap(),
          const Gap(),
          ElevatedButton(
            onPressed: context.navigateToHomePageAfterAuthentication,
            style: ElevatedButton.styleFrom(
              fixedSize: Size(size.width - 24, 45),
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
