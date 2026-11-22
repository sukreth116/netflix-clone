import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/bloc/search_bloc/search_bloc.dart';
import 'package:netflix_clone/core/constants/app_constants.dart';
import 'package:netflix_clone/presentation/widgets/common_titles.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleLarge(title: 'Movies & TV Shows', textAlign: TextAlign.start),
        kHeight10,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state.isError) {
                return const Center(
                  child: Text('Something went wrong. Please try again.'),
                );
              }

              if (state.searchList.isEmpty) {
                return const Center(
                  child: Text(
                    'No movies or TV shows found.',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                );
              }
              return GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 5,
                childAspectRatio: .7,
                children: List.generate(state.searchList.length, (index) {
                  final movieData = state.searchList[index];
                  return Card(
                    elevation: 10,
                    clipBehavior: Clip.antiAlias,
                    child: movieData.posterPath != null
                        ? Image.network(
                            movieData.posterImageUrl,
                            fit: BoxFit.cover,
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) {
                                return child;
                              }
                              return const Center(
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              );
                            },
                          )
                        : Icon(Icons.movie),
                  );
                }),
              );
            },
          ),
        ),
      ],
    );
  }
}
