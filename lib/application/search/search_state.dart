part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required List<Downloads> img,
    required List<SearchResultData> search,
    required bool iloading,
    required bool isError,
  }) = _SearchState;

  factory SearchState.initial() {
    return const SearchState(
      img: [],
      search: [],
      iloading: false,
      isError: false,
    );
  }
}
