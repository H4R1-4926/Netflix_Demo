// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Downloads _$DownloadsFromJson(Map<String, dynamic> json) {
  return _Downloads.fromJson(json);
}

/// @nodoc
mixin _$Downloads {
  @JsonKey(name: "poster_path")
  String? get postarPath => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String? get bacdropPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadsCopyWith<Downloads> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsCopyWith<$Res> {
  factory $DownloadsCopyWith(Downloads value, $Res Function(Downloads) then) =
      _$DownloadsCopyWithImpl<$Res, Downloads>;
  @useResult
  $Res call(
      {@JsonKey(name: "poster_path") String? postarPath,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "backdrop_path") String? bacdropPath});
}

/// @nodoc
class _$DownloadsCopyWithImpl<$Res, $Val extends Downloads>
    implements $DownloadsCopyWith<$Res> {
  _$DownloadsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postarPath = freezed,
    Object? title = freezed,
    Object? name = freezed,
    Object? bacdropPath = freezed,
  }) {
    return _then(_value.copyWith(
      postarPath: freezed == postarPath
          ? _value.postarPath
          : postarPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      bacdropPath: freezed == bacdropPath
          ? _value.bacdropPath
          : bacdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadsImplCopyWith<$Res>
    implements $DownloadsCopyWith<$Res> {
  factory _$$DownloadsImplCopyWith(
          _$DownloadsImpl value, $Res Function(_$DownloadsImpl) then) =
      __$$DownloadsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "poster_path") String? postarPath,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "backdrop_path") String? bacdropPath});
}

/// @nodoc
class __$$DownloadsImplCopyWithImpl<$Res>
    extends _$DownloadsCopyWithImpl<$Res, _$DownloadsImpl>
    implements _$$DownloadsImplCopyWith<$Res> {
  __$$DownloadsImplCopyWithImpl(
      _$DownloadsImpl _value, $Res Function(_$DownloadsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postarPath = freezed,
    Object? title = freezed,
    Object? name = freezed,
    Object? bacdropPath = freezed,
  }) {
    return _then(_$DownloadsImpl(
      postarPath: freezed == postarPath
          ? _value.postarPath
          : postarPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      bacdropPath: freezed == bacdropPath
          ? _value.bacdropPath
          : bacdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DownloadsImpl implements _Downloads {
  const _$DownloadsImpl(
      {@JsonKey(name: "poster_path") required this.postarPath,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "backdrop_path") required this.bacdropPath});

  factory _$DownloadsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DownloadsImplFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String? postarPath;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "backdrop_path")
  final String? bacdropPath;

  @override
  String toString() {
    return 'Downloads(postarPath: $postarPath, title: $title, name: $name, bacdropPath: $bacdropPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadsImpl &&
            (identical(other.postarPath, postarPath) ||
                other.postarPath == postarPath) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bacdropPath, bacdropPath) ||
                other.bacdropPath == bacdropPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, postarPath, title, name, bacdropPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadsImplCopyWith<_$DownloadsImpl> get copyWith =>
      __$$DownloadsImplCopyWithImpl<_$DownloadsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DownloadsImplToJson(
      this,
    );
  }
}

abstract class _Downloads implements Downloads {
  const factory _Downloads(
          {@JsonKey(name: "poster_path") required final String? postarPath,
          @JsonKey(name: "title") required final String? title,
          @JsonKey(name: "name") required final String? name,
          @JsonKey(name: "backdrop_path") required final String? bacdropPath}) =
      _$DownloadsImpl;

  factory _Downloads.fromJson(Map<String, dynamic> json) =
      _$DownloadsImpl.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String? get postarPath;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "backdrop_path")
  String? get bacdropPath;
  @override
  @JsonKey(ignore: true)
  _$$DownloadsImplCopyWith<_$DownloadsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
