import 'package:connect_app/android/app.dart';
import 'package:connect_app/ios/app.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid ? AndroidApp() : IOSApp();
  }
}
