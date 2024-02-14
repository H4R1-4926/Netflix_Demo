// ignore_for_file: no_leading_underscores_for_local_identifiers, invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:newtflix_dupli/Domain/downolads/i_download_repo.dart';
import 'package:newtflix_dupli/Domain/downolads/models/download.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

ValueNotifier<Set<int>> valueNotifier = ValueNotifier({});

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  FastLaughBloc(IDownloadRepo iDownloadRepo) : super(FastLaughState.initial()) {
    on<Initialize>((event, emit) async {
      if (state.videos.isNotEmpty) {
        emit(state);
        return;
      }
      //sending loading in UI
      emit(const FastLaughState(
        videos: [],
        isLoading: true,
        isError: false,
      ));
      //getting data
      final _result = await iDownloadRepo.getDownloadimg();
      final _state = _result.fold(
          (l) => FastLaughState(
                videos: [],
                isLoading: false,
                isError: true,
              ), (resp) {
        return FastLaughState(
          videos: resp,
          isLoading: false,
          isError: false,
        );
      });
      //sending to Ui
      emit(_state);
    });
    on<Likedvideos>((event, emit) async {
      valueNotifier.value.add(event.id);

      valueNotifier.notifyListeners();
    });
    on<Unlikedvideos>((event, emit) async {
      valueNotifier.value.remove(event.id);
      valueNotifier.notifyListeners();
    });
  }
}
