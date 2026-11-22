import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/app_constants.dart';
import 'package:netflix_clone/presentation/downloads/widgets/sections.dart';

class Downloads extends StatelessWidget {
  Downloads({super.key});
  final widgetList = [
    SmartDownloadsSection(),
    MiddleSection(),
    ButtonSection(),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return widgetList[index];
      },
      separatorBuilder: (context, index) {
        return kHeight20;
      },
      itemCount: widgetList.length,
    );
  }
}
