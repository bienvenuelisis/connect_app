import 'dart:io' show Platform;

import 'package:connect_app/android/app.dart';
import 'package:connect_app/ios/app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const AndroidApp();
    return Platform.isAndroid ? const AndroidApp() : const IOSApp();
  }
}
