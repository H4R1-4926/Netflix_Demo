import 'package:json_annotation/json_annotation.dart';
part 'everyone_watching.g.dart';

@JsonSerializable()
class EveryoneWatching {
  @JsonKey(name: 'results')
  List<EveryoneWatchingResult> results;

  EveryoneWatching({
    this.results = const [],
  });

  factory EveryoneWatching.fromJson(Map<String, dynamic> json) {
    return _$EveryoneWatchingFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EveryoneWatchingToJson(this);
}

@JsonSerializable()
class EveryoneWatchingResult {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'release_date')
  String? date;
  @JsonKey(name: 'overview')
  String? overview;

  @JsonKey(name: 'backdrop_path')
  String? backDroppath;

  EveryoneWatchingResult(
      {this.id, this.title, this.backDroppath, this.overview, this.date});

  factory EveryoneWatchingResult.fromJson(Map<String, dynamic> json) {
    return _$EveryoneWatchingResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EveryoneWatchingResultToJson(this);
}
