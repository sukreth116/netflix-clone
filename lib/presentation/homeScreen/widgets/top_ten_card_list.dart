import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/app_constants.dart';
import 'package:netflix_clone/presentation/homeScreen/widgets/number_card.dart';
import 'package:netflix_clone/presentation/homeScreen/widgets/number_card_list.dart';
import 'package:netflix_clone/presentation/widgets/common_titles.dart';

class TopTenCardList extends StatelessWidget {
  const TopTenCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleLarge(title: 'Top Ten of the week'),
        kHeight10,
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) {
              return NumberCard(imageUrl: posterImageUrl[index], index: index);
            }),
          ),
        ),
      ],
    );
  }
}

class TopTenCardList1 extends StatelessWidget {
  const TopTenCardList1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleLarge(title: 'Top Ten of the week'),
        kHeight10,
        SizedBox(height: 200, child: NumberCardList()),
      ],
    );
  }
}
