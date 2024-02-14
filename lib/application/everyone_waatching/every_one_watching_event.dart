part of 'every_one_watching_bloc.dart';

@freezed
class EveryOneWatchingEvent with _$EveryOneWatchingEvent {
  const factory EveryOneWatchingEvent.initialized() = Initialized;
  const factory EveryOneWatchingEvent.coming() = Coming;
}
