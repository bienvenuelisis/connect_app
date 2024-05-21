import 'package:connect_app/commons/functions/navigation.dart';
import 'package:connect_app/commons/layouts/multi_platform_widget.dart';
import 'package:connect_app/commons/widgets/app_icon_and_title.dart';
import 'package:flutter/material.dart';

import '../../android/screens/onboarding_screen.dart' as android;
import '../../ios/screens/onboarding_screen.dart' as ios;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  Duration duration = const Duration(seconds: 3);

  @override
  void dispose() {
    controller.stop();
    super.dispose();
  }

  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 5),
    ).then(
      (_) => pushToAndRemoveAll(
        context,
        const MultiPlatformWidget(
          android: android.OnBoardingScreen(),
          ios: ios.OnBoardingScreen(),
        ),
      ),
    );
    controller = AnimationController(
      vsync: this,
      duration: duration,
    );
    controller.forward();
    controller.repeat(
      reverse: true,
      min: 0.5,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ColoredBox(
      color: theme.primaryColor,
      child: Center(
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            //print(controller.value);
            return Transform.scale(
              scale: controller.value * 1.5,
              child: child!,
            );
          },
          child: const AppIconAndTitle(),
        ),
      ),
    );
  }
}
