import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/widgets/common_bottons.dart';

const String mainImage =
    'https://image.tmdb.org/t/p/original/i7UyjfPio0VFHB9rBUZSFyhOoM8.jpg';

class HomeScreenBackgroundImage extends StatelessWidget {
  const HomeScreenBackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 540,
          decoration: BoxDecoration(
            // color: foregroundColor,
            image: DecorationImage(image: NetworkImage(mainImage)),
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TitleWithIcon(title: 'My List', icon: Icons.add),
              CommonIconElevatedButton(title: 'Play'),
              TitleWithIcon(title: 'Info', icon: Icons.info),
            ],
          ),
        ),
      ],
    );
  }
}
