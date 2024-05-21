import 'package:flutter/material.dart';

import '../widgets/app_icon_and_title.dart';

class RoundedTopAppBarLayout extends StatelessWidget {
  const RoundedTopAppBarLayout({
    super.key,
    required this.body,
    this.appBar,
  });

  final Widget? appBar;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);

    return Material(
      color: theme.primaryColor,
      child: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: SizedBox(
                width: size.width,
                height: 200,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: theme.primaryColor,
                  ),
                  child: appBar ??
                      Transform.scale(
                        scale: 0.9,
                        child: const AppIconAndTitle(),
                      ),
                ),
              ),
            ),
            Positioned(
              top: 180,
              left: 0,
              child: SizedBox(
                width: size.width,
                height: size.height - 180,
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(36),
                    ),
                  ),
                  child: body,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
