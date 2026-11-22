import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/constants/app_colors.dart';
import 'package:netflix_clone/presentation/widgets/common_image_poster.dart';

class NumberCard extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double width;
  final double borderRadius;
  final int index;
  const NumberCard({
    super.key,
    required this.index,
    this.height = 200,
    this.width = 130,
    this.borderRadius = 10,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 80),
          child: ImagePosterCard(imageUrl: imageUrl),
        ),
        StrockedLargeNumber(index: index),
      ],
    );
  }
}

class StrockedLargeNumber extends StatelessWidget {
  const StrockedLargeNumber({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 95,
      left: 20,
      child: BorderedText(
        strokeWidth: 2,
        strokeColor: foregroundColor,
        child: Text(
          '${index + 1}',
          style: TextStyle(
            fontSize: 100,
            fontFamily: GoogleFonts.blackOpsOne().fontFamily,
            fontStyle: FontStyle.italic,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
