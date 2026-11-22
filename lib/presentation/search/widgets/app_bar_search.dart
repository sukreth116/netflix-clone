import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_debouncer/flutter_debouncer.dart';
import 'package:netflix_clone/bloc/search_bloc/search_bloc.dart';
import 'package:netflix_clone/core/constants/app_colors.dart';

class AppBarSearch extends StatelessWidget {
  AppBarSearch({super.key});

  final Debouncer debouncer = Debouncer();
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      title: CupertinoSearchTextField(
        controller: searchController,
        backgroundColor: kColorGrey.withValues(alpha: .5),
        prefixIcon: Icon(CupertinoIcons.search, color: kColorGrey),
        suffixIcon: Icon(CupertinoIcons.xmark_circle_fill, color: kColorGrey),
        style: TextStyle(color: kColorWhite70),
        placeholderStyle: TextStyle(color: kColorGrey),
        onSubmitted: (value) {
          debouncer.debounce(
            duration: Duration(seconds: 1),
            onDebounce: () {
              BlocProvider.of<SearchBloc>(
                context,
              ).add(SearchMovie(movieQuery: value));
            },
          );
        },
        onSuffixTap: () {
          searchController.clear();
          BlocProvider.of<SearchBloc>(context).add(SearchInitialize());
        },
      ),
    );
  }
}
