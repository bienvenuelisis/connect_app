import 'package:flutter/material.dart';

import '../commons/navigation.dart';
import 'onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  Duration duration = const Duration(seconds: 3);
  late AnimationController controller;

  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 5),
    ).then(
      (_) => pushToAndRemoveAll(
        context,
        const OnBoardingScreen(),
      ),
    );
    controller = AnimationController(
      vsync: this,
      duration: duration,
    );
    controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Material(
      color: theme.primaryColor,
      child: Center(
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return child!;
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.connect_without_contact_rounded,
                size: 54,
              ),
              const SizedBox(
                width: 24,
              ),
              Text(
                "Connect",
                style: theme.textTheme.displayMedium?.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
