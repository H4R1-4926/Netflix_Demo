// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:newtflix_dupli/Domain/New&hot/i_everyonwwatching_repo.dart';

import '../../Domain/New&hot/model/everyone_watching.dart';

part 'every_one_watching_event.dart';
part 'every_one_watching_state.dart';
part 'every_one_watching_bloc.freezed.dart';

@injectable
class EveryOneWatchingBloc
    extends Bloc<EveryOneWatchingEvent, EveryOneWatchingState> {
  final IEveryoneWatchingRepo iEveryoneWatchingRepo;
  // final IComingSoon iComingSoon;
  EveryOneWatchingBloc(this.iEveryoneWatchingRepo)
      : super(EveryOneWatchingState.initial()) {
    on<Initialized>((event, emit) async {
      if (state.getDetails.isNotEmpty) {
        emit(state);
        return;
      }
      emit(const EveryOneWatchingState(
          isloading: true, isError: false, getDetails: [], upcoming: []));
      final _result = await iEveryoneWatchingRepo.getpopilarmovies();
      final _state = _result.fold((fail) {
        return const EveryOneWatchingState(
            isloading: false, isError: true, getDetails: [], upcoming: []);
      }, (success) {
        return EveryOneWatchingState(
            isloading: false,
            isError: false,
            getDetails: success.results,
            upcoming: state.upcoming);
      });
      emit(_state);
    });
    on<Coming>((event, emit) async {
      if (state.upcoming.isNotEmpty) {
        emit(state);
        return;
      }
      emit(const EveryOneWatchingState(
          isloading: true, isError: false, getDetails: [], upcoming: []));
      final _result = await iEveryoneWatchingRepo.comingsoon();
      final _state = _result.fold((fail) {
        return const EveryOneWatchingState(
            isloading: false, isError: true, getDetails: [], upcoming: []);
      }, (success) {
        return EveryOneWatchingState(
            isloading: false,
            isError: false,
            getDetails: state.getDetails,
            upcoming: success.results);
      });
      emit(_state);
    });
  }
}
