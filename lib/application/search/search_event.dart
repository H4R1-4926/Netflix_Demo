part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.initialscreen() = Initialscreen;
  const factory SearchEvent.searchScreen({required String movieQuery}) =
      SearchScreen;
}
