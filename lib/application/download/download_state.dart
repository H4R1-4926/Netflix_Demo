part of 'download_bloc.dart';

@freezed
class DownloadState with _$DownloadState {
  const factory DownloadState.downloadimg({
    required bool isLoading,
    required List<Downloads> getimg,
    required Option getFailureOrSuccessState,
  }) = _Downloadimg;

  factory DownloadState.initial() {
    return DownloadState.downloadimg(
        isLoading: false, getFailureOrSuccessState: none(), getimg: []);
  }
}
