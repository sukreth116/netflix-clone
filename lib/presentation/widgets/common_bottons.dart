import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/app_colors.dart';
import 'package:netflix_clone/presentation/widgets/common_titles.dart';

class CommonButtonBlue extends StatelessWidget {
  final String title;
  final double padding;
  const CommonButtonBlue({
    super.key,
    required this.title,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: Colors.blueAccent.shade400,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(7),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: Text(
          title,
          style: TextStyle(color: foregroundColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class CommonButtonWhite extends StatelessWidget {
  final String title;
  final double padding;
  const CommonButtonWhite({
    super.key,
    required this.title,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(7),
      ),
      onPressed: () {},
      color: foregroundColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: Text(
          title,
          style: TextStyle(color: backgroundColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class CommonIconElevatedButton extends StatelessWidget {
  final String title;
  final Color textColor;
  final Color iconColor;

  const CommonIconElevatedButton({
    super.key,
    required this.title,
    this.textColor = backgroundColor,
    this.iconColor = backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
        fixedSize: const Size(80, 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(5),
        ),
      ),
      label: TitleSmall(title: title, textColor: textColor),
      icon: Icon(Icons.play_arrow, color: iconColor),
    );
  }
}

class TitleWithIcon extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color iconColor;
  const TitleWithIcon({
    super.key,
    required this.title,
    this.iconColor = foregroundColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: iconColor),
        TitleSmall(title: title, textAlign: TextAlign.start),
      ],
    );
  }
}
