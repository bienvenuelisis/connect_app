import 'package:flutter/material.dart';

class OnBoardingOrTextWithDividers extends StatelessWidget {
  const OnBoardingOrTextWithDividers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: size.width * 0.4,
          child: const Divider(),
        ),
        const Text("OR"),
        SizedBox(
          width: size.width * 0.4,
          child: const Divider(),
        ),
      ],
    );
  }
}
