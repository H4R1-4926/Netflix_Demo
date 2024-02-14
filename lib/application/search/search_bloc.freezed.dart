// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialscreen,
    required TResult Function(String movieQuery) searchScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialscreen,
    TResult? Function(String movieQuery)? searchScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialscreen,
    TResult Function(String movieQuery)? searchScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialscreen value) initialscreen,
    required TResult Function(SearchScreen value) searchScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialscreen value)? initialscreen,
    TResult? Function(SearchScreen value)? searchScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialscreen value)? initialscreen,
    TResult Function(SearchScreen value)? searchScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialscreenImplCopyWith<$Res> {
  factory _$$InitialscreenImplCopyWith(
          _$InitialscreenImpl value, $Res Function(_$InitialscreenImpl) then) =
      __$$InitialscreenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialscreenImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$InitialscreenImpl>
    implements _$$InitialscreenImplCopyWith<$Res> {
  __$$InitialscreenImplCopyWithImpl(
      _$InitialscreenImpl _value, $Res Function(_$InitialscreenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialscreenImpl implements Initialscreen {
  const _$InitialscreenImpl();

  @override
  String toString() {
    return 'SearchEvent.initialscreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialscreenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialscreen,
    required TResult Function(String movieQuery) searchScreen,
  }) {
    return initialscreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialscreen,
    TResult? Function(String movieQuery)? searchScreen,
  }) {
    return initialscreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialscreen,
    TResult Function(String movieQuery)? searchScreen,
    required TResult orElse(),
  }) {
    if (initialscreen != null) {
      return initialscreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialscreen value) initialscreen,
    required TResult Function(SearchScreen value) searchScreen,
  }) {
    return initialscreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialscreen value)? initialscreen,
    TResult? Function(SearchScreen value)? searchScreen,
  }) {
    return initialscreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialscreen value)? initialscreen,
    TResult Function(SearchScreen value)? searchScreen,
    required TResult orElse(),
  }) {
    if (initialscreen != null) {
      return initialscreen(this);
    }
    return orElse();
  }
}

abstract class Initialscreen implements SearchEvent {
  const factory Initialscreen() = _$InitialscreenImpl;
}

/// @nodoc
abstract class _$$SearchScreenImplCopyWith<$Res> {
  factory _$$SearchScreenImplCopyWith(
          _$SearchScreenImpl value, $Res Function(_$SearchScreenImpl) then) =
      __$$SearchScreenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String movieQuery});
}

/// @nodoc
class __$$SearchScreenImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchScreenImpl>
    implements _$$SearchScreenImplCopyWith<$Res> {
  __$$SearchScreenImplCopyWithImpl(
      _$SearchScreenImpl _value, $Res Function(_$SearchScreenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieQuery = null,
  }) {
    return _then(_$SearchScreenImpl(
      movieQuery: null == movieQuery
          ? _value.movieQuery
          : movieQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchScreenImpl implements SearchScreen {
  const _$SearchScreenImpl({required this.movieQuery});

  @override
  final String movieQuery;

  @override
  String toString() {
    return 'SearchEvent.searchScreen(movieQuery: $movieQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchScreenImpl &&
            (identical(other.movieQuery, movieQuery) ||
                other.movieQuery == movieQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchScreenImplCopyWith<_$SearchScreenImpl> get copyWith =>
      __$$SearchScreenImplCopyWithImpl<_$SearchScreenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialscreen,
    required TResult Function(String movieQuery) searchScreen,
  }) {
    return searchScreen(movieQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialscreen,
    TResult? Function(String movieQuery)? searchScreen,
  }) {
    return searchScreen?.call(movieQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialscreen,
    TResult Function(String movieQuery)? searchScreen,
    required TResult orElse(),
  }) {
    if (searchScreen != null) {
      return searchScreen(movieQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialscreen value) initialscreen,
    required TResult Function(SearchScreen value) searchScreen,
  }) {
    return searchScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialscreen value)? initialscreen,
    TResult? Function(SearchScreen value)? searchScreen,
  }) {
    return searchScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialscreen value)? initialscreen,
    TResult Function(SearchScreen value)? searchScreen,
    required TResult orElse(),
  }) {
    if (searchScreen != null) {
      return searchScreen(this);
    }
    return orElse();
  }
}

abstract class SearchScreen implements SearchEvent {
  const factory SearchScreen({required final String movieQuery}) =
      _$SearchScreenImpl;

  String get movieQuery;
  @JsonKey(ignore: true)
  _$$SearchScreenImplCopyWith<_$SearchScreenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  List<Downloads> get img => throw _privateConstructorUsedError;
  List<SearchResultData> get search => throw _privateConstructorUsedError;
  bool get iloading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {List<Downloads> img,
      List<SearchResultData> search,
      bool iloading,
      bool isError});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? img = null,
    Object? search = null,
    Object? iloading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as List<SearchResultData>,
      iloading: null == iloading
          ? _value.iloading
          : iloading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Downloads> img,
      List<SearchResultData> search,
      bool iloading,
      bool isError});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? img = null,
    Object? search = null,
    Object? iloading = null,
    Object? isError = null,
  }) {
    return _then(_$SearchStateImpl(
      img: null == img
          ? _value._img
          : img // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      search: null == search
          ? _value._search
          : search // ignore: cast_nullable_to_non_nullable
              as List<SearchResultData>,
      iloading: null == iloading
          ? _value.iloading
          : iloading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  const _$SearchStateImpl(
      {required final List<Downloads> img,
      required final List<SearchResultData> search,
      required this.iloading,
      required this.isError})
      : _img = img,
        _search = search;

  final List<Downloads> _img;
  @override
  List<Downloads> get img {
    if (_img is EqualUnmodifiableListView) return _img;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_img);
  }

  final List<SearchResultData> _search;
  @override
  List<SearchResultData> get search {
    if (_search is EqualUnmodifiableListView) return _search;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_search);
  }

  @override
  final bool iloading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'SearchState(img: $img, search: $search, iloading: $iloading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            const DeepCollectionEquality().equals(other._img, _img) &&
            const DeepCollectionEquality().equals(other._search, _search) &&
            (identical(other.iloading, iloading) ||
                other.iloading == iloading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_img),
      const DeepCollectionEquality().hash(_search),
      iloading,
      isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final List<Downloads> img,
      required final List<SearchResultData> search,
      required final bool iloading,
      required final bool isError}) = _$SearchStateImpl;

  @override
  List<Downloads> get img;
  @override
  List<SearchResultData> get search;
  @override
  bool get iloading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
