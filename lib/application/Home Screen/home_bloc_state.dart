part of 'home_bloc_bloc.dart';

@freezed
class HomeBlocState with _$HomeBlocState {
  const factory HomeBlocState({
    required bool isLoading,
    required bool iseror,
    required List<HomeScreenData> postarTV,
    required List<HomeScreenData> postarMovie,
  }) = _HomeBlocState;
  factory HomeBlocState.initial() {
    return const HomeBlocState(
        isLoading: false, iseror: false, postarTV: [], postarMovie: []);
  }
}
