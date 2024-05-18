import 'package:flutter/material.dart';

Future<T?> pushTo<T>(BuildContext context, Widget page) {
  return Navigator.of(context).push<T>(
    MaterialPageRoute(
      builder: (_) => page,
    ),
  );
}

Future<T?> pushAndReplace<T>(BuildContext context, Widget page) {
  return Navigator.of(context).pushReplacement(
    MaterialPageRoute(
      builder: (_) => page,
    ),
  );
}

Future<T?> pushToAndRemoveAll<T>(BuildContext context, Widget page) {
  return Navigator.of(context).pushAndRemoveUntil(
    MaterialPageRoute(
      builder: (_) => page,
    ),
    (_) => false,
  );
}
