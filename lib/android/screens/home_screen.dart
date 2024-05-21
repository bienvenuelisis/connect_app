import 'package:connect_app/commons/controllers/states/homepage.dart';
import 'package:flutter/material.dart';

import '../layouts/home_page_layout.dart';
import '../widgets/chat_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePageLayout(
      body: HomeScreenBody(),
    );
  }
}

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return switch (bottomNavigationBarSelectedIndex.reactiveValue(context)) {
      BottomNavigationBarIndex.inbox => const ChatScreenBody(),
      BottomNavigationBarIndex.cloud => const _ColoredBody(),
      BottomNavigationBarIndex.share => const _ColoredBody(
          color: Colors.red,
        ),
      BottomNavigationBarIndex.settings => const _ColoredBody(
          color: Colors.blue,
        ),
    };
  }
}

class _ColoredBody extends StatelessWidget {
  const _ColoredBody({
    this.color,
  });

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: ColoredBox(
        color: color ?? Theme.of(context).primaryColor,
      ),
    );
  }
}
