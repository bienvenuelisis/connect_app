import 'package:connect_app/android/widgets/on_boarding_form.dart';
import 'package:connect_app/commons/layouts/rounded_top_app_bar_layout.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const RoundedTopAppBarLayout(
      body: Column(
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
