import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/api_constants.dart';
import 'package:netflix_clone/core/constants/app_colors.dart';
import 'package:netflix_clone/core/constants/app_constants.dart';
import 'package:netflix_clone/domain/downloads/api_models/downloads.dart';
import 'package:netflix_clone/presentation/fastLaughs/widgets/video_player.dart';

class VideoListItemInheritedWidget extends InheritedWidget {
  final Widget widget;
  final Downloads movieData;
  const VideoListItemInheritedWidget({
    super.key,
    required this.widget,
    required this.movieData,
  }) : super(child: widget);

  @override
  bool updateShouldNotify(covariant VideoListItemInheritedWidget oldWidget) {
    return oldWidget.movieData != movieData;
  }

  static VideoListItemInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoListItemInheritedWidget>();
  }
}

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final posterPath = VideoListItemInheritedWidget.of(
      context,
    )?.movieData.posterPath;

    final videoUrl = dummyVideoUrl[index % dummyVideoUrl.length];
    return Stack(
      children: [
        FastLaughVideoPlayer(
          videoUrl: videoUrl,
          onStateChanged: (isPlaying) {},
        ),
        Align(
          // alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: CircleAvatar(
                  backgroundColor: backgroundColor.withValues(alpha: 0.5),
                  radius: 28,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.volume_up,
                      size: 30,
                      color: foregroundColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.35),
                              blurRadius: 8,
                              offset: const Offset(3, 2),
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: posterPath == null
                              ? null
                              : NetworkImage('$imageBaseUrl$posterPath'),
                        ),
                      ),
                    ),
                    ReelIcon(icon: Icons.emoji_emotions, title: 'Lol'),
                    ReelIcon(icon: Icons.add, title: 'My List'),
                    ReelIcon(icon: Icons.share, title: 'Share'),
                    ReelIcon(
                      icon: Icons.play_circle_outline_outlined,
                      title: 'Play',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ReelIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  const ReelIcon({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: (Column(
        children: [
          Icon(
            icon,
            color: foregroundColor,
            size: 30,
            shadows: [
              Shadow(
                color: Colors.black.withValues(alpha: 0.4),
                offset: const Offset(3, 1),
                blurRadius: 3,
              ),
            ],
          ),
          Text(
            title,
            style: TextStyle(
              shadows: [
                Shadow(
                  color: Colors.black.withValues(alpha: 0.4),
                  offset: const Offset(3, 1),
                  blurRadius: 3,
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
