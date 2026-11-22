import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/app_colors.dart';
import 'package:netflix_clone/core/constants/app_constants.dart';
import 'package:netflix_clone/presentation/widgets/common_image_poster.dart';
import 'package:netflix_clone/presentation/widgets/common_titles.dart';

class CommonAppBar extends StatelessWidget {
  final String title;

  const CommonAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: transparent,
      foregroundColor: foregroundColor,
      title: CommonAppBarTitle(title: title),
      actions: [
        Icon(Icons.cast),
        kWidth20,
        ImagePosterCard(
          imageUrl: netflixDefaultProfileAvatar,
          height: 30,
          width: 30,
          borderRadius: 5,
        ),
        kWidth20,
      ],
    );
  }
}

class HomeScreenAppBar1 extends StatelessWidget {
  final String logoUrl;

  const HomeScreenAppBar1({super.key, required this.logoUrl});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      title: Image.asset(logoUrl, width: 40),
      actions: [
        Icon(Icons.cast),
        kWidth20,
        ImagePosterCard(
          imageUrl: netflixDefaultProfileAvatar,
          height: 30,
          width: 30,
          borderRadius: 5,
        ),
        kWidth20,
      ],
    );
  }
}
