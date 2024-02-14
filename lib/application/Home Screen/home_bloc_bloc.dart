import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:newtflix_dupli/Domain/home_page/i_homescrre_repo.dart';
import 'package:newtflix_dupli/Domain/home_page/model/home_page.dart';

part 'home_bloc_event.dart';
part 'home_bloc_state.dart';
part 'home_bloc_bloc.freezed.dart';

@injectable
class HomeBlocBloc extends Bloc<HomeBlocEvent, HomeBlocState> {
  HomeScreenPage homeScreenPage;
  HomeBlocBloc(this.homeScreenPage) : super(HomeBlocState.initial()) {
    on<GetMoviePostar>((event, emit) async {
      if (state.postarMovie.isNotEmpty || state.postarTV.isNotEmpty) {
        return emit(state);
      }
      emit(state.copyWith(isLoading: true, iseror: false));
      final _result = await homeScreenPage.getMoviePostar();
      final _result2 = await homeScreenPage.getTvPostar();
      final _state1 = _result.fold((fail) {
        return HomeBlocState(
            isLoading: false, iseror: true, postarTV: [], postarMovie: []);
      }, (success) {
        final mov = success.results;

        return HomeBlocState(
            isLoading: false,
            iseror: false,
            postarTV: state.postarTV,
            postarMovie: mov);
      });
      emit(_state1);
      final state2 = _result2.fold((fail) {
        return HomeBlocState(
            isLoading: false, iseror: true, postarTV: [], postarMovie: []);
      }, (success) {
        final tv = success.results;

        return HomeBlocState(
            isLoading: false,
            iseror: false,
            postarTV: tv,
            postarMovie: state.postarMovie);
      });
      emit(state2);
    });
  }
}
