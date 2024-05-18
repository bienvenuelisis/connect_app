import 'package:connect_app/android/widgets/on_boarding_form.dart';
import 'package:connect_app/commons/layouts/rounded_top_app_bar_layout.dart';
import 'package:connect_app/commons/widgets/app_icon_and_title.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedTopAppBarLayout(
      appBar: Transform.scale(
        scale: 0.9,
        child: const AppIconAndTitle(),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 36),
            child: OnBoardingForm(),
          ),
        ],
      ),
    );
  }
}
