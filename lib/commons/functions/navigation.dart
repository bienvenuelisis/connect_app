import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<T?> pushTo<T>(BuildContext context, Widget page) {
  return Navigator.of(context).push<T>(
    _routeBuilder(page),
  );
}

PageRoute<T> _routeBuilder<T>(Widget page) {
  if (Platform.isIOS) {
    return CupertinoPageRoute<T>(
      builder: (_) => page,
    );
  } else {
    return MaterialPageRoute<T>(
      builder: (_) => page,
    );
  }
}

Future<T?> pushAndReplace<T>(BuildContext context, Widget page) {
  return Navigator.of(context).pushReplacement(
    _routeBuilder(page),
  );
}

Future<T?> pushToAndRemoveAll<T>(BuildContext context, Widget page) {
  return Navigator.of(context).pushAndRemoveUntil(
    _routeBuilder(page),
    (_) => false,
  );
}
