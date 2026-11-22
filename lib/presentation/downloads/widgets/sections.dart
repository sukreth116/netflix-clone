import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/bloc/downloads_bloc/downloads_bloc.dart';
import 'package:netflix_clone/core/constants/api_constants.dart';
import 'package:netflix_clone/core/constants/app_colors.dart';
import 'package:netflix_clone/core/constants/app_constants.dart';
import 'package:netflix_clone/presentation/downloads/widgets/rotating_image_poster.dart';
import 'package:netflix_clone/presentation/widgets/common_bottons.dart';
import 'package:netflix_clone/presentation/widgets/common_titles.dart';

class MiddleSection extends StatefulWidget {
  const MiddleSection({super.key});

  @override
  State<MiddleSection> createState() => _MiddleSectionState();
}

class _MiddleSectionState extends State<MiddleSection> {
  @override
  void initState() {
    context.read<DownloadsBloc>().add(DownloadsEvent.getDownloadsImages());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        TitleLarge(
          title: 'Introducing Downloads for You',
          textAlign: TextAlign.center,
        ),
        kHeight20,
        const Text(
          'We will download personalised selection of movies and shows for you, so there is always something to watch on your device',
          style: TextStyle(color: kColorGrey),
          textAlign: TextAlign.center,
        ),
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            return SizedBox(
              width: screenSize.width,
              height: 320,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: screenSize.width * 0.35,
                    backgroundColor: kColorGrey.shade900,
                  ),
                  RotatingImagePoster(
                    imageUrl:
                        (state.downloads.isNotEmpty)
                        ? '$imageBaseUrl${state.downloads[0].posterPath}'
                        : noImageUrl,
                    angle: 15,
                    margin: EdgeInsets.only(left: 150),
                  ),
                  RotatingImagePoster(
                    imageUrl:
                        (state.downloads.isNotEmpty)
                        ? '$imageBaseUrl${state.downloads[1].posterPath}'
                        : noImageUrl,
                    angle: -15,
                    margin: EdgeInsets.only(right: 150),
                  ),
                  RotatingImagePoster(
                    imageUrl:
                        (state.downloads.isNotEmpty)
                        ? '$imageBaseUrl${state.downloads[2].posterPath}'
                        : noImageUrl,
                    angle: 0,
                    margin: EdgeInsets.only(top: 30),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommonButtonBlue(title: 'Set Up', padding: 120),
        CommonButtonWhite(title: 'See what you can download', padding: 20),
      ],
    );
  }
}

class SmartDownloadsSection extends StatelessWidget {
  const SmartDownloadsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth20,
        Icon(Icons.settings, color: foregroundColor),
        kWidth20,
        TitleMediam(title: 'Smart Downloads', textAlign: TextAlign.start),
      ],
    );
  }
}
