import 'package:flutter/material.dart';

class ImagePosterCard extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double width;
  final double borderRadius;
  const ImagePosterCard({
    super.key,
    this.height = 200,
    this.width = 130,
    this.borderRadius = 10,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [],
          borderRadius: BorderRadius.circular(borderRadius),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
