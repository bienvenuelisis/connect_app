import 'dart:io';

import 'package:flutter/widgets.dart';

class MultiPlatformWidget extends StatelessWidget {
  const MultiPlatformWidget({
    super.key,
    required this.android,
    required this.ios,
  });

  final Widget android;
  final Widget ios;

  @override
  Widget build(BuildContext context) {
    return android;
    //return ios;
    //TODO Finalize iOS UI equivalents implementations.
    return Platform.isIOS ? ios : android;
  }
}
