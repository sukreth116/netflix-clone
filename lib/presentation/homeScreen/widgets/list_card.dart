import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/app_constants.dart';
import 'package:netflix_clone/presentation/widgets/common_image_poster.dart';
import 'package:netflix_clone/presentation/widgets/common_titles.dart';

class HorizonrtalCardListView extends StatelessWidget {
  final String title;
  final List imageList;
  const HorizonrtalCardListView({
    super.key,
    required this.title,
    required this.imageList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleLarge(title: title),
        kHeight10,
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(imageList.length, (index) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: ImagePosterCard(imageUrl: imageList[index]),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
