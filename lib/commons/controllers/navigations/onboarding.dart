import 'package:connect_app/android/screens/home_screen.dart' as android;
import 'package:connect_app/commons/functions/navigation.dart';
import 'package:connect_app/commons/layouts/multi_platform_widget.dart';
import 'package:connect_app/ios/screens/home_screen.dart' as ios;
import 'package:flutter/cupertino.dart';

extension OnBoardingNavigations on BuildContext {
  Future<void> navigateToHomePageAfterAuthentication() {
    return pushToAndRemoveAll(
      this,
      const MultiPlatformWidget(
        android: android.HomeScreen(),
        ios: ios.HomeScreen(),
      ),
    );
  }
}
