import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/core/constants/app_colors.dart';
import 'package:netflix_clone/core/constants/app_constants.dart';
import 'package:netflix_clone/presentation/homeScreen/widgets/home_screen_background_image.dart';
import 'package:netflix_clone/presentation/homeScreen/widgets/list_card.dart';
import 'package:netflix_clone/presentation/homeScreen/widgets/top_ten_card_list.dart';
import 'package:netflix_clone/presentation/widgets/common_image_poster.dart';
import 'package:netflix_clone/presentation/widgets/common_titles.dart';
import 'package:netflix_clone/tv_shows.dart';
import 'package:netflix_clone/movies.dart';

const List<String> category = [
  'Released in the Past Year',
  'Trendnig',
  'Popular',
  'Top Rated',
];
ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return false;
            },
            child: ListView(
              children: [
                HomeScreenBackgroundImage(),

                Padding(
                  padding: const EdgeInsets.all(14),
                  child: HorizonrtalCardListView(
                    imageList: posterImageListOfList[0],
                    title: category[0],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14),
                  child: HorizonrtalCardListView(
                    imageList: posterImageListOfList[1],
                    title: category[1],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14),
                  child: TopTenCardList(),
                ),
                Padding(
                  padding: const EdgeInsets.all(14),
                  child: HorizonrtalCardListView(
                    imageList: posterImageListOfList[2],
                    title: category[2],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14),
                  child: HorizonrtalCardListView(
                    imageList: posterImageListOfList[3],
                    title: category[3],
                  ),
                ),
              ],
            ),
          ),

          ValueListenableBuilder<bool>(
            valueListenable: scrollNotifier,
            builder: (context, isVisible, child) {
              return AnimatedPositioned(
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeInOut,
                top: isVisible ? 10 : -120,
                left: 20,
                right: 20,
                child: IgnorePointer(
                  ignoring: !isVisible,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 1000),
                    opacity: isVisible ? 1 : 0,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(netflixLogo, width: 50),
                            const Spacer(),
                            Icon(
                              Icons.cast,
                              color: foregroundColor,
                              shadows: [
                                Shadow(
                                  color: Colors.black.withValues(alpha: 0.9),
                                  offset: const Offset(3, 1),
                                  blurRadius: 3,
                                ),
                              ],
                            ),
                            kWidth20,
                            ImagePosterCard(
                              imageUrl: netflixDefaultProfileAvatar,
                              height: 30,
                              width: 30,
                              borderRadius: 5,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return TvShows();
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                'TV Shows',
                                style: TextStyle(
                                  color: foregroundColor,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black.withValues(
                                        alpha: 0.9,
                                      ),
                                      offset: const Offset(3, 1),
                                      blurRadius: 5,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return MoviesScreen();
                                    },
                                  ),
                                );
                              },
                              child: TitleSmall(title: 'Movies'),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: TitleSmall(title: 'Categories'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

// List.generate(6, (index) {
//   if (index == 0) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 10),
//       child: HomeScreenBackgroundImage(),
//     );
//   }
//   if (index == 3) {
//     // Show a different widget at index 2
//     return Padding(
//       padding: const EdgeInsets.only(
//         right: 20,
//         left: 20,
//         bottom: 20,
//       ),
//       child: TopTenCardList(),
//     );
//   } else {
//     // Show the normal widget at other indexes
//     return Padding(
//       padding: const EdgeInsets.only(
//         right: 20,
//         left: 20,
//         bottom: 20,
//       ),
//       child: HorizonrtalCardListView(
//         title: category[index],
//         imageList: posterImage[index],
//       ),
//     );
//   }
// }),
