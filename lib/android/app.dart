import 'package:flutter/material.dart';

import 'commons/theme.dart';
import 'screens/splash_screen.dart';

class AndroidApp extends StatelessWidget {
  const AndroidApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Connect App",
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: androidLightTheme,
    );
  }
}
