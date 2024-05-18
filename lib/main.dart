import 'package:connect_app/android/app.dart';
import 'package:connect_app/commons/layouts/multi_platform_widget.dart';
import 'package:connect_app/ios/app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MultiPlatformWidget(
      android: AndroidApp(),
      ios: IOSApp(),
    );
  }
}
