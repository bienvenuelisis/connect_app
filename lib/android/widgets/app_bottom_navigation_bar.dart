import 'package:connect_app/commons/controllers/states/homepage.dart';
import 'package:flutter/material.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final selectedIndex =
        bottomNavigationBarSelectedIndex.reactiveValue(context);

    return BottomNavigationBar(
      elevation: 6,
      currentIndex: selectedIndex.index,
      onTap: (index) {
        bottomNavigationBarSelectedIndex.value =
            BottomNavigationBarIndex.values[index];
      },
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.inbox),
          label: "Inbox",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.cloud),
          label: "Cloud",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.attach_file_rounded),
          label: "Share",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "Settings",
        ),
      ],
    );
  }
}
