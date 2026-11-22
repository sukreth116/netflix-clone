import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/app_colors.dart';
import 'package:netflix_clone/core/constants/app_constants.dart';
import 'package:netflix_clone/presentation/hotAndNew/widgets/comming_soon.dart';
import 'package:netflix_clone/presentation/hotAndNew/widgets/movie_description.dart';

class HotAndNew extends StatelessWidget {
  const HotAndNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DefaultTabController(
        length: 2,
        child: Column(
          spacing: 10,
          children: [
            TabBar(
              isScrollable: false,
              unselectedLabelColor: foregroundColor,
              labelColor: backgroundColor,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              dividerColor: transparent,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: const EdgeInsets.all(3),

              indicator: BoxDecoration(
                color: foregroundColor,
                borderRadius: BorderRadius.circular(30),
              ),
              tabs: [
                Tab(text: '🍿 Coming Soon'),
                Tab(text: "Everyone's Watching"),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [_buildComingSoon(context), _everyOnesWatching()],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildComingSoon(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return ListView(
      children: [
        CommingSoon(
          size: screenSize,
          month: 'FEB',
          date: '11',
          logoUrl: movieTitleLogo,
          imageUrl: posterHorizontalImageUrl[0],
          movieTitle: 'MatchBox The Movie',
          description:
              'When a group of former childhood friends reconnect, their reunion takes a wild turn as they stumble upon a dangerous international plot—and must save the world.',
        ),
        Divider(),
      ],
    );
  }

  Widget _everyOnesWatching() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: MovieDescription(
            firstIcon: CupertinoIcons.share,
            secondIcon: CupertinoIcons.add,
            thirdIcon: CupertinoIcons.play_fill,
            imageUrl: posterHorizontalImageUrl[index],
            logoUrl: movieTitleLogo,
            movieTitle: 'Tall Girl 2',
            description:
                'When a group of former childhood friends reconnect, their reunion takes a wild turn as they stumble upon a dangerous international plot—and must save the world',
          ),
        );
      },
      itemCount: 10,
    );
  }
}
