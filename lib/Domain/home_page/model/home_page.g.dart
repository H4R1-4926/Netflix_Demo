// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeMainScreen _$HomeMainScreenFromJson(Map<String, dynamic> json) =>
    HomeMainScreen(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => HomeScreenData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$HomeMainScreenToJson(HomeMainScreen instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

HomeScreenData _$HomeScreenDataFromJson(Map<String, dynamic> json) =>
    HomeScreenData(
      id: json['id'] as int?,
      postarPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$HomeScreenDataToJson(HomeScreenData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'poster_path': instance.postarPath,
    };
