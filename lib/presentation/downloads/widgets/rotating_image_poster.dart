import 'dart:math';
import 'package:flutter/material.dart';

class RotatingImagePoster extends StatelessWidget {
  final String imageUrl;
  final double angle;
  final EdgeInsets margin;
  const RotatingImagePoster({
    super.key,
    required this.imageUrl,
    required this.angle,
    required this.margin,
  });

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: screenSize.width * 0.35,
        height: screenSize.width * 0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
