import 'package:connect_app/commons/controllers/states/onboarding.dart';
import 'package:connect_app/commons/widgets/on_boarding_tab.dart';
import 'package:flutter/material.dart';

class OnBoardingTabs extends StatelessWidget {
  const OnBoardingTabs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: size.width * 0.95,
          minHeight: 63,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(6),
          ),
          child: Builder(builder: (_) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 6,
                ),
                SizedBox(
                  width: size.width * 0.45,
                  height: 45,
                  child: OnBoardingTab(
                    selected: onBoardingSelectedTab.reactiveValue(context) ==
                        OnBoardingSelectedTab.login,
                    title: "Login",
                    onTap: () {
                      onBoardingSelectedTab.value = OnBoardingSelectedTab.login;
                    },
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                SizedBox(
                  width: size.width * 0.45,
                  height: 45,
                  child: OnBoardingTab(
                    selected: onBoardingSelectedTab.reactiveValue(context) ==
                        OnBoardingSelectedTab.register,
                    title: "Register",
                    onTap: () {
                      onBoardingSelectedTab.value =
                          OnBoardingSelectedTab.register;
                    },
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
