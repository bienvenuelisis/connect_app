import 'package:flutter_reactive_value/flutter_reactive_value.dart';

final bottomNavigationBarSelectedIndex =
    ReactiveValueNotifier<BottomNavigationBarIndex>(
  BottomNavigationBarIndex.inbox,
);

enum BottomNavigationBarIndex {
  inbox,
  cloud,
  share,
  settings,
}
