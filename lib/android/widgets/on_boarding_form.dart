// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:connect_app/android/widgets/on_boarding_login_form.dart';
import 'package:connect_app/commons/controllers/states/onboarding.dart';
import 'package:connect_app/commons/widgets/gap.dart';
import 'package:flutter/material.dart';

import '../../commons/widgets/on_boarding_tabs.dart';
import 'on_boarding_register_form.dart';

class OnBoardingForm extends StatelessWidget {
  const OnBoardingForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
