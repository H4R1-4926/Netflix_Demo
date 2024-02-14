// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'everyone_watching.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EveryoneWatching _$EveryoneWatchingFromJson(Map<String, dynamic> json) =>
    EveryoneWatching(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) =>
                  EveryoneWatchingResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$EveryoneWatchingToJson(EveryoneWatching instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

EveryoneWatchingResult _$EveryoneWatchingResultFromJson(
        Map<String, dynamic> json) =>
    EveryoneWatchingResult(
      id: json['id'] as int?,
      title: json['title'] as String?,
      backDroppath: json['backdrop_path'] as String?,
      overview: json['overview'] as String?,
      date: json['release_date'] as String?,
    );

Map<String, dynamic> _$EveryoneWatchingResultToJson(
        EveryoneWatchingResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'release_date': instance.date,
      'overview': instance.overview,
      'backdrop_path': instance.backDroppath,
    };
