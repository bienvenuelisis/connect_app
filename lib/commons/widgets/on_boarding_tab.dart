import 'package:flutter/material.dart';

class OnBoardingTab extends StatelessWidget {
  const OnBoardingTab({
    super.key,
    required this.title,
    this.selected = false,
    this.onTap,
  });

  final bool selected;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 450),
        decoration: BoxDecoration(
          color: selected ? primaryColor : Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: selected ? Colors.white : primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
