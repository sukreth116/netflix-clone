import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:netflix_clone/core/constants/app_colors.dart';
import 'package:netflix_clone/presentation/bottomNavigation/bottom_navigation.dart';
import 'package:netflix_clone/presentation/downloads/downloads.dart';
import 'package:netflix_clone/presentation/fastLaughs/fast_laughs.dart';
import 'package:netflix_clone/presentation/homeScreen/home_screen.dart';
import 'package:netflix_clone/presentation/hotAndNew/hot_and_new.dart';
import 'package:netflix_clone/presentation/search/search.dart';
import 'package:netflix_clone/presentation/search/widgets/app_bar_search.dart';
import 'package:netflix_clone/presentation/widgets/common_app_bar.dart';

final List<Widget> pages = [
  HomeScreen(),
  HotAndNew(),
  FastLaughs(),
  Search(),
  Downloads(),
];

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: currentIndex == 0
          ? const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.light,
              statusBarBrightness: Brightness.dark,
            )
          : SystemUiOverlayStyle.dark,

      child: Scaffold(
        appBar: _buildAppBar(),
        body: IndexedStack(index: currentIndex, children: pages),
        bottomNavigationBar: AppBottomNavigation(
          onTap: onItemTapped,
          selectedIndex: currentIndex,
        ),
      ),
    );
  }

  PreferredSizeWidget? _buildAppBar() {
    switch (currentIndex) {
      case 0:
        return null;

      case 1:
        return PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CommonAppBar(title: 'Hot & New'),
        );

      case 2:
        return AppBar(
          backgroundColor: transparent,
          title: Text('Fast Laughs', style: TextStyle(color: foregroundColor)),
        );

      case 3:
        return PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarSearch(),
        );
      case 4:
        return PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CommonAppBar(title: 'Downloads'),
        );

      default:
        return AppBar();
    }
  }
}
