import 'package:flutter/cupertino.dart';
import 'package:netflix_clone/core/constants/app_colors.dart';
import 'package:netflix_clone/core/constants/app_constants.dart';
import 'package:netflix_clone/presentation/hotAndNew/widgets/comming_soon.dart';
import 'package:netflix_clone/presentation/widgets/common_titles.dart';

class MovieDescription extends StatelessWidget {
  const MovieDescription({
    super.key,
    required this.imageUrl,
    required this.logoUrl,
    required this.movieTitle,
    required this.description,
    this.firstIcon,
    this.secondIcon,
    this.thirdIcon,
  });

  final String imageUrl;
  final String logoUrl;
  final String movieTitle;
  final String description;
  final IconData? firstIcon;
  final IconData? secondIcon;
  final IconData? thirdIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Stack(
            children: [
              Image.network(imageUrl),
              Positioned(
                bottom: 10,
                right: 10,
                child: CircularIcon(icon: CupertinoIcons.volume_down, size: 25),
              ),
            ],
          ),

          Row(
            spacing: 10,
            children: [
              Image.network(logoUrl, width: 150),
              Spacer(),
              firstIcon != null
                  ? Icon(firstIcon, color: foregroundColor)
                  : SizedBox(),
              secondIcon != null
                  ? Icon(secondIcon, color: foregroundColor)
                  : SizedBox(),
              thirdIcon != null
                  ? Icon(thirdIcon, color: foregroundColor)
                  : SizedBox(),
            ],
          ),

          TitleSmall(title: 'Comming on Friday'),

          Row(
            spacing: 10,
            children: [
              Image.asset(netflixLogo, width: 30),

              TitleSpaced(title: 'FILM'),
            ],
          ),
          TitleBold(movieTitle: movieTitle, size: 20),
          TitleSmall(title: description, textColor: kColorGrey),
        ],
      ),
    );
  }
}
