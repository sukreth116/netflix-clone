import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/app_colors.dart';

class AppBottomNavigation extends StatelessWidget {
  final ValueChanged<int> onTap;
  final int selectedIndex;
  const AppBottomNavigation({
    super.key,
    required this.onTap,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: backgroundColor,
      selectedItemColor: foregroundColor,
      unselectedItemColor: kColorGrey,
      onTap: onTap,
      currentIndex: selectedIndex,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_library_rounded),
          label: 'Hot & New',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.emoji_emotions_outlined),
          label: 'Fast Laughs',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(
          icon: Icon(Icons.file_download_outlined),
          label: 'Download',
        ),
      ],
    );
  }
}
