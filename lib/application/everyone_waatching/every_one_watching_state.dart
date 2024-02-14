part of 'every_one_watching_bloc.dart';

@freezed
class EveryOneWatchingState with _$EveryOneWatchingState {
  const factory EveryOneWatchingState({
    required bool isloading,
    required bool isError,
    required List<EveryoneWatchingResult> getDetails,
    required List<EveryoneWatchingResult> upcoming,
  }) = _EveryOneWatchingState;
  factory EveryOneWatchingState.initial() {
    return const EveryOneWatchingState(
        isloading: false, isError: false, getDetails: [], upcoming: []);
  }
}
