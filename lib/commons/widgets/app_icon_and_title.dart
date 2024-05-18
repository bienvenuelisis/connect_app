import 'package:flutter/material.dart';

class AppIconAndTitle extends StatelessWidget {
  const AppIconAndTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.connect_without_contact_rounded,
          size: 54,
          color: Colors.white,
        ),
        const SizedBox(
          width: 24,
        ),
        Text(
          "Connect",
          style: theme.textTheme.displayMedium?.copyWith(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
