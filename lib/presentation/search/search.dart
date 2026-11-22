import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/bloc/search_bloc/search_bloc.dart';
import 'package:netflix_clone/presentation/search/widgets/search_idle.dart';
import 'package:netflix_clone/presentation/search/widgets/search_result.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          if (state.searchQuery.isEmpty) {
            return SearchIdle();
          } else {
            return SearchResult();
          }
        },
      ),
    );
  }
}
