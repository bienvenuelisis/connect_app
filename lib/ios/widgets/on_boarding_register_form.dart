import 'package:connect_app/commons/controllers/navigations/onboarding.dart';
import 'package:connect_app/commons/widgets/gap.dart';
import 'package:connect_app/commons/widgets/log_in_with_google_icon_and_text.dart';
import 'package:connect_app/commons/widgets/on_boarding_or_text_with_dividers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../commons/controllers/states/onboarding.dart';
import '../../commons/widgets/password_field_visibility_icon_button.dart';

class OnBoardingRegisterForm extends StatelessWidget {
  const OnBoardingRegisterForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Full name"),
        const Gap(),
        ConstrainedBox(
          constraints: const BoxConstraints(minHeight: 45),
          child: CupertinoTextField(
            style: const TextStyle(
              color: Colors.black,
            ),
            prefix: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.person),
            ),
            placeholder: "Amah Kwatcha",
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: Colors.grey[300]!,
              ),
            ),
          ),
        ),
        const Gap(),
        const Text("Email address"),
        const Gap(),
        ConstrainedBox(
          constraints: const BoxConstraints(minHeight: 45),
          child: CupertinoTextField(
            style: const TextStyle(
              color: Colors.black,
            ),
            prefix: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.email),
            ),
            placeholder: "amahkwatch@gmail.com",
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: Colors.grey[300]!,
              ),
            ),
          ),
        ),
        const Gap(),
        const Text("Password"),
        const Gap(),
        ConstrainedBox(
          constraints: const BoxConstraints(minHeight: 45),
          child: Builder(builder: (context) {
            final bool obscureText =
                onBoardingPasswordObscureText.reactiveValue(context);

            return CupertinoTextField(
              style: const TextStyle(
                color: Colors.black,
              ),
              obscureText: obscureText,
              suffix: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PasswordFieldVisibilityIconButton(
                  obscureText: obscureText,
                  onTap: (value) {
                    onBoardingPasswordObscureText.value = value;
                  },
                ),
              ),
              prefix: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.password),
              ),
              placeholder: "",
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: Colors.grey[300]!,
                ),
              ),
            );
          }),
        ),
        const Gap(),
        const Gap(),
        Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: size.width - 24,
            ),
            child: CupertinoButton.filled(
              onPressed: context.navigateToHomePageAfterAuthentication,
              child: const Text("Register"),
            ),
          ),
        ),
        const Gap(),
        const Gap(),
        const OnBoardingOrTextWithDividers(),
        const Gap(),
        const Gap(),
        Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: size.width - 24,
            ),
            child: CupertinoButton(
              color: Colors.white,
              onPressed: context.navigateToHomePageAfterAuthentication,
              child: const LogInWithGoogleIconAndText(
                text: "Sign up with Google",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
