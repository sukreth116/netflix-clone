import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/app_colors.dart';
import 'package:netflix_clone/presentation/hotAndNew/widgets/movie_description.dart';
import 'package:netflix_clone/presentation/widgets/common_titles.dart';

class CommingSoon extends StatelessWidget {
  final String month;
  final String date;
  final String logoUrl;
  final String imageUrl;
  final String movieTitle;
  final String description;
  final Size size;
  const CommingSoon({
    super.key,
    required this.size,
    required this.month,
    required this.date,
    required this.logoUrl,
    required this.imageUrl,
    required this.movieTitle,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          SizedBox(
            width: size.width / 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TitleSmall(title: month, textColor: foregroundColor),
                TitleBold(movieTitle: date, size: 28),
              ],
            ),
          ),
          Expanded(
            child: MovieDescription(
              firstIcon: CupertinoIcons.bell,
              secondIcon: CupertinoIcons.info,
              imageUrl: imageUrl,
              logoUrl: logoUrl,
              movieTitle: movieTitle,
              description: description,
            ),
          ),
        ],
      ),
    );
  }
}

class TitleSpaced extends StatelessWidget {
  final String title;
  final double fontSize;
  final double letterSpacing;
  const TitleSpaced({
    super.key,
    this.fontSize = 10,
    this.letterSpacing = 3,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(fontSize: 10, letterSpacing: 3));
  }
}

class TitleBold extends StatelessWidget {
  const TitleBold({super.key, required this.movieTitle, required this.size});

  final String movieTitle;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      movieTitle,
      style: TextStyle(fontSize: size, fontFamily: 'MontserratBold'),
    );
  }
}

class CircularIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  const CircularIcon({super.key, required this.icon, required this.size});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor.withValues(alpha: 0.5),
      radius: size,
      child: IconButton(
        onPressed: () {},
        icon: Icon(icon, size: size, color: foregroundColor),
      ),
    );
  }
}
