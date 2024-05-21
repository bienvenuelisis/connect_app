import 'package:flutter_reactive_value/flutter_reactive_value.dart';

final onBoardingSelectedTab =
    ReactiveValueNotifier<OnBoardingSelectedTab>(OnBoardingSelectedTab.login);

enum OnBoardingSelectedTab {
  login,
  register;
}

final onBoardingPasswordObscureText = ReactiveValueNotifier<bool>(true);
