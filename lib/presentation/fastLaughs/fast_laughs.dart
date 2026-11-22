import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/bloc/fast_laugh_bloc/fast_laugh_bloc.dart';
import 'package:netflix_clone/core/constants/app_colors.dart';
import 'package:netflix_clone/presentation/fastLaughs/widgets/video_list_item.dart';

class FastLaughs extends StatelessWidget {
  const FastLaughs({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastLaughBloc>(
        context,
      ).add(const InitializeFastLaughEvent());
    });
    return SafeArea(
      child: BlocBuilder<FastLaughBloc, FastLaughState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: kColorRed,
              ),
            );
          } else if (state.isError) {
            return const Center(child: Text('Error while loading data'));
          } else if (state.isError) {
            return const Center(child: Text('No videos found data'));
          } else {
            return PageView(
              scrollDirection: Axis.vertical,
              children: List.generate(state.videosList.length, (index) {
                return VideoListItemInheritedWidget(
                  widget: VideoListItem(
                    key: Key(index.toString()),
                    index: index,
                  ),
                  movieData: state.videosList[index],
                );
              }),
            );
          }
        },
      ),
    );
  }
}
