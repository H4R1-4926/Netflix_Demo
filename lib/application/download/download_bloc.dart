import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:newtflix_dupli/Domain/core/failures/main_failure.dart';
import 'package:newtflix_dupli/Domain/downolads/i_download_repo.dart';
import 'package:newtflix_dupli/Domain/downolads/models/download.dart';

part 'download_event.dart';
part 'download_state.dart';
part 'download_bloc.freezed.dart';

@injectable
class DownloadBloc extends Bloc<DownloadEvent, DownloadState> {
  final IDownloadRepo iDownloadRepo;
  DownloadBloc(this.iDownloadRepo) : super(DownloadState.initial()) {
    on<_GetDownloadimg>((event, emit) async {
      emit(state.copyWith(isLoading: false, getFailureOrSuccessState: none()));
      final Either<MainFailure, List<Downloads>> downloadgetimg =
          await iDownloadRepo.getDownloadimg();

      emit(downloadgetimg.fold(
        (failure) => state.copyWith(
            isLoading: true, getFailureOrSuccessState: some(failure)),
        (success) => state.copyWith(
          isLoading: false,
          getimg: success,
          getFailureOrSuccessState: some(success),
        ),
      ));
    });
  }
}
