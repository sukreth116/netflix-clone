import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:netflix_clone/core/constants/app_colors.dart';
import 'package:netflix_clone/core/constants/app_constants.dart';
import 'package:netflix_clone/presentation/widgets/common_titles.dart';
import 'package:netflix_clone/presentation/widgets/common_image_poster.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Everything scrolls, including the title and header.
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 420,
                pinned: true,
                elevation: 0,
                backgroundColor: backgroundColor,
                leading: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Material(
                    color: Colors.black.withValues(alpha: 0.65),
                    shape: const CircleBorder(),
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                    ),
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Material(
                      color: Colors.black87,
                      shape: const CircleBorder(),
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          CupertinoIcons.heart,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Material(
                      color: Colors.black87,
                      shape: const CircleBorder(),
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          CupertinoIcons.checkmark_rectangle_fill,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: [
                      // Image PageView
                      PageView.builder(
                        itemBuilder: (context, idx) {
                          final img = posterHorizontalImageUrl[0];
                          return Hero(
                            tag: 111111,
                            child: Image.network(img, fit: BoxFit.cover),
                          );
                        },
                      ),

                      // Gradient Bottom Fade for smooth content blend
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        height: 50,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                backgroundColor.withValues(alpha: 0.0),
                                backgroundColor,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                      ),

                      // Indicators
                    ],
                  ),
                ),
              ),

              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: const Text(
                          'My Wishlist',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      // const SizedBox(height: 20),

                      // // Example header content.
                      // Container(
                      //   height: 160,
                      //   width: double.infinity,
                      //   alignment: Alignment.center,
                      //   decoration: BoxDecoration(
                      //     color: Colors.grey.shade200,
                      //     borderRadius: BorderRadius.circular(16),
                      //   ),
                      //   child: const Icon(Icons.favorite, size: 56),
                      // ),
                    ],
                  ),
                ),
              ),

              // This list moves up to fill the header's old space.
              SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return ListTile(
                    leading: ImagePosterCard(
                      width: 50,
                      imageUrl: posterHorizontalImageUrl[index],
                    ),
                    title: TitleSmall(title: 'Movie ${index + 1}'),
                    subtitle: const TitleSmall(title: 'Item description'),
                  );
                }, childCount: 11),
              ),
            ],
          ),

          // Pinned back button, independent of scroll position.
        ],
      ),
    );
  }
}
