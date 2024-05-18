import 'package:connect_app/commons/constants/constants.dart';
import 'package:connect_app/commons/screens/splash_screen.dart';
import 'package:connect_app/ios/core/theme.dart';
import 'package:flutter/cupertino.dart';

class IOSApp extends StatelessWidget {
  const IOSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: SplashScreen(),
      title: appTitle,
      debugShowCheckedModeBanner: false,
      theme: cupertinoLightTheme,
    );
  }
}
