import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/bloc/search_bloc/search_bloc.dart';
import 'package:netflix_clone/core/constants/api_constants.dart';
import 'package:netflix_clone/core/constants/app_colors.dart';
import 'package:netflix_clone/core/constants/app_constants.dart';
import 'package:netflix_clone/presentation/search/widgets/top_search_list_tile.dart';
import 'package:netflix_clone/presentation/widgets/common_titles.dart';

class SearchIdle extends StatefulWidget {
  const SearchIdle({super.key});

  @override
  State<SearchIdle> createState() => _SearchIdleState();
}

class _SearchIdleState extends State<SearchIdle> {
  @override
  void initState() {
    BlocProvider.of<SearchBloc>(context).add(const SearchInitialize());
    super.initState();
  }

  // @override
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleLarge(title: 'Top Searches', textAlign: TextAlign.start),
        kHeight10,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return Center(
                  child: const CircularProgressIndicator(
                    color: foregroundColor,
                  ),
                );
              } else if (state.isError) {
                return Center(
                  child: const Text('Error occured while loading data'),
                );
              } else if (state.idleList.isEmpty) {
                return Center(child: const Text('List empty'));
              }
              return ListView.separated(
                itemBuilder: (context, index) {
                  final movieObjectList = state.idleList[index];
                  debugPrint(
                    'Image URL: $imageBaseUrl${movieObjectList.backdropPath}',
                  );
                  return TopSearchesListTile(
                    icon: Icon(Icons.play_circle_outline_outlined),
                    imageUrl: '$imageBaseUrl${movieObjectList.backdropPath}',
                    title: movieObjectList.title ?? 'no title',
                  );
                },
                separatorBuilder: (context, index) {
                  return kHeight20;
                },
                itemCount: state.idleList.length,
              );
            },
          ),
        ),
      ],
    );
  }
}
