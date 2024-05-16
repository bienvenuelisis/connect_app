import 'package:flutter/material.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 6,
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
          label: "Cloud",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "Settings",
        ),
      ],
    );
  }
}
