// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'download.freezed.dart';
part 'download.g.dart';

@freezed
class Downloads with _$Downloads {
  const factory Downloads({
    @JsonKey(name: "poster_path") required String? postarPath,
    @JsonKey(name: "title") required String? title,
    @JsonKey(name: "name") required String? name,
    @JsonKey(name: "backdrop_path") required String? bacdropPath,
  }) = _Downloads;

  factory Downloads.fromJson(Map<String, dynamic> json) =>
      _$DownloadsFromJson(json);
}
