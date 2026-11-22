part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState({
    required List<SearchResultModel> searchList,
    required List<Downloads> idleList,
    required bool isLoading,
    required bool isError,
    required String searchQuery,
  }) = _SearchState;

  factory SearchState.initial() => const SearchState(
    searchList: [],
    idleList: [],
    isLoading: false,
    isError: false,
    searchQuery: '',
  );
}
