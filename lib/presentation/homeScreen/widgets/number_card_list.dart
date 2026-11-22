import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/constants/app_colors.dart';
import 'package:netflix_clone/core/constants/app_constants.dart';
import 'package:netflix_clone/presentation/widgets/common_image_poster.dart';

class NumberCardList extends StatelessWidget {
  const NumberCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 220,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            width: 2000,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: 1870,
                  child: ImagePosterCard(imageUrl: posterImageUrl[9]),
                ),
                Positioned(
                  left: 1800,
                  bottom: -40,
                  child: StrockedText(number: 10),
                ),
                Positioned(
                  left: 830,
                  child: ImagePosterCard(imageUrl: posterImageUrl[10]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StrockedText extends StatelessWidget {
  final int number;
  const StrockedText({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return BorderedText(
      strokeWidth: 2,
      strokeColor: foregroundColor,
      child: Text(
        '$number',
        style: TextStyle(
          fontSize: 100,
          fontFamily: GoogleFonts.blackOpsOne().fontFamily,
          fontStyle: FontStyle.italic,
          color: Colors.black,
        ),
      ),
    );
  }
}
