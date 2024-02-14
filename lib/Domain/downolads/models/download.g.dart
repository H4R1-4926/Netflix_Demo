// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DownloadsImpl _$$DownloadsImplFromJson(Map<String, dynamic> json) =>
    _$DownloadsImpl(
      postarPath: json['poster_path'] as String?,
      title: json['title'] as String?,
      name: json['name'] as String?,
      bacdropPath: json['backdrop_path'] as String?,
    );

Map<String, dynamic> _$$DownloadsImplToJson(_$DownloadsImpl instance) =>
    <String, dynamic>{
      'poster_path': instance.postarPath,
      'title': instance.title,
      'name': instance.name,
      'backdrop_path': instance.bacdropPath,
    };
