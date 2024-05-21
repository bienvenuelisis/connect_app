import 'package:connect_app/commons/widgets/on_boarding_tabs.dart';
import 'package:connect_app/ios/widgets/on_boarding_login_form.dart';
import 'package:flutter/material.dart';

import '../../commons/controllers/states/onboarding.dart';
import '../../commons/widgets/gap.dart';
import 'on_boarding_register_form.dart';

class OnBoardingForm extends StatelessWidget {
  const OnBoardingForm({
    super.key,
  });

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
            const OnBoardingTabs(),
            const Gap(),
            const Gap(),
            Builder(
              builder: (_) {
                return onBoardingSelectedTab.reactiveValue(context) ==
                        OnBoardingSelectedTab.login
                    ? const OnBoardingLoginForm()
                    : const OnBoardingRegisterForm();
              },
            ),
          ],
        ),
      ),
    );
  }
}
