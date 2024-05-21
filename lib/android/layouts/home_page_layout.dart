import 'package:flutter/material.dart';

import '../widgets/app_bottom_navigation_bar.dart';
import '../widgets/chat_floating_action_button.dart';

class HomePageLayout extends StatelessWidget {
  const HomePageLayout({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SafeArea(child: body),
      floatingActionButton: const ChatFloatingActionButton(),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
