// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:newtflix_dupli/Domain/Search/i_search_repo.dart';
import 'package:newtflix_dupli/Domain/Search/model/search_resp.dart';
import 'package:newtflix_dupli/Domain/downolads/i_download_repo.dart';

import '../../Domain/downolads/models/download.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadRepo _iDownloadRepo;
  final ISearchRepo _iSearchRepo;
  SearchBloc(this._iDownloadRepo, this._iSearchRepo)
      : super(SearchState.initial()) {
    on<Initialscreen>((event, emit) async {
      if (state.img.isNotEmpty) {
        emit(state);
        return;
      }
      emit(const SearchState(
          img: [], search: [], iloading: true, isError: false));
/*get trending  */
      final _result = await _iDownloadRepo.getDownloadimg();
      final _state = _result.fold((failure) {
        return const SearchState(
            img: [], search: [], iloading: false, isError: true);
      }, (success) {
        return SearchState(
            img: success, search: [], iloading: false, isError: false);
      });
      emit(_state);
/*show in ui  */
    });
    on<SearchScreen>((event, emit) async {
      /*get api call for search  */
      // print('movie ${event.movieQuery}');
      emit(const SearchState(
          img: [], search: [], iloading: true, isError: false));
      final _result =
          await _iSearchRepo.searchresult(searchQuary: event.movieQuery);
      final _state = _result.fold((fail) {
        return const SearchState(
            img: [], search: [], iloading: false, isError: true);
      }, (success) {
        return SearchState(
            img: [], search: success.results, iloading: false, isError: false);
      });

      //  print(_result);
/*show in ui  */
      emit(_state);
    });
  }
}
