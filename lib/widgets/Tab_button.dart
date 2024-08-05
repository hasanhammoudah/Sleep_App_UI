import 'package:flutter/material.dart';
import 'package:sleep_app_ui/app_styles.dart';

class TabButton extends StatelessWidget {
  final int index;
  final String title;
  final int currentIndex;
  final VoidCallback onTap;

  const TabButton({
    super.key,
    required this.index,
    required this.title,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // constraints: const BoxConstraints(
        //     minHeight: 50, minWidth: 100), // Ensure minimum size
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kBorderRadius12),
          color: currentIndex == index ? kBlueAzure4A : Colors.transparent,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: currentIndex == index ? Colors.white : kWhiteFF,
          ),
        ),
      ),
    );
  }
}
