import 'package:connect_app/commons/constants/constants.dart';
import 'package:flutter/material.dart';

import 'core/theme.dart';
import '../commons/screens/splash_screen.dart';

class AndroidApp extends StatelessWidget {
  const AndroidApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: androidLightTheme,
    );
  }
}
