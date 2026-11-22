import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/app_colors.dart';

class TitleLarge extends StatelessWidget {
  final String title;
  final TextAlign? textAlign;
  final Color textColor;
  const TitleLarge({
    super.key,
    required this.title,
    this.textColor = foregroundColor,

    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
      textAlign: textAlign,
    );
  }
}

class TitleMediam extends StatelessWidget {
  final String title;
  final TextAlign textAlign;
  final Color textColor;
  const TitleMediam({
    super.key,
    required this.title,
    this.textAlign = TextAlign.start,
    this.textColor = foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
      textAlign: textAlign,
    );
  }
}

class TitleSmall extends StatelessWidget {
  final String title;
  final TextAlign textAlign;
  final Color textColor;
  const TitleSmall({
    super.key,
    required this.title,
    this.textAlign = TextAlign.start,
    this.textColor = foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
      textAlign: textAlign,
    );
  }
}

class CommonAppBarTitle extends StatelessWidget {
  final String title;
  const CommonAppBarTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(fontWeight: FontWeight.bold));
  }
}
