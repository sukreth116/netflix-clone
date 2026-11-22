import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:netflix_clone/core/constants/app_colors.dart';
import 'package:netflix_clone/core/constants/app_constants.dart';
import 'package:netflix_clone/presentation/widgets/common_titles.dart';
import 'package:netflix_clone/presentation/widgets/common_image_poster.dart';

class TvShows extends StatefulWidget {
  const TvShows({super.key});

  @override
  State<TvShows> createState() => _TvShowsState();
}

class _TvShowsState extends State<TvShows> {
  final ScrollController _scrollController = ScrollController();

  double _largeTitleOpacity = 1.0;
  double _smallTitleOpacity = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_handleScroll);
  }

  void _handleScroll() {
    final offset = _scrollController.offset;

    // Fade the large title out during the first 150 pixels.
    final largeOpacity = (1.0 - (offset / 150.0)).clamp(0.0, 1.0);

    // Show the small title only near the collapsed toolbar.
    final smallOpacity = ((offset - 300.0) / 80.0).clamp(0.0, 1.0);

    if (largeOpacity != _largeTitleOpacity ||
        smallOpacity != _smallTitleOpacity) {
      setState(() {
        _largeTitleOpacity = largeOpacity;
        _smallTitleOpacity = smallOpacity;
      });
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_handleScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Everything scrolls, including the title and header.
          CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                expandedHeight: 300,
                collapsedHeight: kToolbarHeight,
                pinned: true,
                elevation: 0,
                backgroundColor: backgroundColor,
                automaticallyImplyLeading: false,

                leading: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Material(
                    color: const Color.fromARGB(255, 40, 40, 40),
                    shape: const CircleBorder(),
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                    ),
                  ),
                ),
                title: Opacity(
                  opacity: _smallTitleOpacity,
                  child: const Text(
                    'TV Shows',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),

                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Material(
                      color: const Color.fromARGB(255, 40, 40, 40),
                      shape: const CircleBorder(),
                      child: IconButton(
                        onPressed: () {},
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
                      color: const Color.fromARGB(255, 40, 40, 40),
                      shape: const CircleBorder(),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.app,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],

                flexibleSpace: LayoutBuilder(
                  builder: (context, constraints) {
                    return FlexibleSpaceBar(
                      collapseMode: CollapseMode.parallax,
                      background: Stack(
                        fit: StackFit.expand,
                        children: [
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            height: 180,
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    backgroundColor.withValues(alpha: 0),
                                    backgroundColor,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                            ),
                          ),

                          // Title fades out as the header collapses.
                          Center(
                            child: Opacity(
                              opacity: _largeTitleOpacity,
                              child: const Text(
                                'TV Shows',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              // This list moves up to fill the header's old space.
              SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return ListTile(
                    leading: ImagePosterCard(
                      width: 50,
                      imageUrl: posterImageUrl[index],
                    ),
                    title: TitleSmall(title: 'Movie ${index + 1}'),
                    subtitle: const TitleSmall(title: 'Item description'),
                  );
                }, childCount: posterImageUrl.length),
              ),
            ],
          ),

          // Pinned back button, independent of scroll position.
        ],
      ),
    );
  }
}
