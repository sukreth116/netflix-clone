import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/downloads/api_models/downloads.dart';
import 'package:netflix_clone/domain/search/model/search_result_model.dart';
import 'package:netflix_clone/domain/search/model/serach_response_model.dart';
import 'package:netflix_clone/infrastructure/downloads_service/i_downloads_repo.dart';
import 'package:netflix_clone/infrastructure/search_service/search_service.dart';
part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo downloadService;
  final SearchService searchService;
  SearchBloc({required this.downloadService, required this.searchService})
    : super(SearchState.initial()) {
    // Idle State
    on<SearchInitialize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        emit(
          SearchState(
            searchList: [],
            idleList: state.idleList,
            isLoading: false,
            isError: false,
            searchQuery: '',
          ),
        );
        return;
      }
      emit(
        const SearchState(
          searchList: [],
          idleList: [],
          isLoading: true,
          isError: false,
          searchQuery: '',
        ),
      );
      final movieList = await downloadService.getDownloadsImages();
      final foldEitherState = movieList.fold(
        (MainFailure f) {
          return const SearchState(
            searchList: [],
            idleList: [],
            isLoading: false,
            isError: true,
            searchQuery: '',
          );
        },
        (List<Downloads> downloadsList) {
          return SearchState(
            searchList: [],
            idleList: downloadsList,
            isLoading: false,
            isError: false,
            searchQuery: '',
          );
        },
      );
      emit(foldEitherState);
    });

    // Search State
    on<SearchMovie>((event, emit) async {
      log(event.movieQuery);
      emit(
        SearchState(
          searchList: [],
          idleList: [],
          isLoading: true,
          isError: false,
          searchQuery: event.movieQuery,
        ),
      );
      final searchResult = await searchService.searchMovies(
        movieQuery: event.movieQuery,
      );
      emit(
        searchResult.fold(
          (MainFailure l) {
            return SearchState(
              searchList: [],
              idleList: [],
              isLoading: false,
              isError: true,
              searchQuery: event.movieQuery,
            );
          },
          (SerachModel searchModelObject) {
            return SearchState(
              searchList: searchModelObject.results,
              idleList: [],
              isLoading: false,
              isError: false,
              searchQuery: event.movieQuery,
            );
          },
        ),
      );
    });
  }
}
