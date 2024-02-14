// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'every_one_watching_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EveryOneWatchingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() coming,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? coming,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? coming,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(Coming value) coming,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(Coming value)? coming,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(Coming value)? coming,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EveryOneWatchingEventCopyWith<$Res> {
  factory $EveryOneWatchingEventCopyWith(EveryOneWatchingEvent value,
          $Res Function(EveryOneWatchingEvent) then) =
      _$EveryOneWatchingEventCopyWithImpl<$Res, EveryOneWatchingEvent>;
}

/// @nodoc
class _$EveryOneWatchingEventCopyWithImpl<$Res,
        $Val extends EveryOneWatchingEvent>
    implements $EveryOneWatchingEventCopyWith<$Res> {
  _$EveryOneWatchingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$EveryOneWatchingEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializedImpl implements Initialized {
  const _$InitializedImpl();

  @override
  String toString() {
    return 'EveryOneWatchingEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() coming,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? coming,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? coming,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(Coming value) coming,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(Coming value)? coming,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(Coming value)? coming,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements EveryOneWatchingEvent {
  const factory Initialized() = _$InitializedImpl;
}

/// @nodoc
abstract class _$$ComingImplCopyWith<$Res> {
  factory _$$ComingImplCopyWith(
          _$ComingImpl value, $Res Function(_$ComingImpl) then) =
      __$$ComingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ComingImplCopyWithImpl<$Res>
    extends _$EveryOneWatchingEventCopyWithImpl<$Res, _$ComingImpl>
    implements _$$ComingImplCopyWith<$Res> {
  __$$ComingImplCopyWithImpl(
      _$ComingImpl _value, $Res Function(_$ComingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ComingImpl implements Coming {
  const _$ComingImpl();

  @override
  String toString() {
    return 'EveryOneWatchingEvent.coming()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ComingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() coming,
  }) {
    return coming();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? coming,
  }) {
    return coming?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? coming,
    required TResult orElse(),
  }) {
    if (coming != null) {
      return coming();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(Coming value) coming,
  }) {
    return coming(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(Coming value)? coming,
  }) {
    return coming?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(Coming value)? coming,
    required TResult orElse(),
  }) {
    if (coming != null) {
      return coming(this);
    }
    return orElse();
  }
}

abstract class Coming implements EveryOneWatchingEvent {
  const factory Coming() = _$ComingImpl;
}

/// @nodoc
mixin _$EveryOneWatchingState {
  bool get isloading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<EveryoneWatchingResult> get getDetails =>
      throw _privateConstructorUsedError;
  List<EveryoneWatchingResult> get upcoming =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EveryOneWatchingStateCopyWith<EveryOneWatchingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EveryOneWatchingStateCopyWith<$Res> {
  factory $EveryOneWatchingStateCopyWith(EveryOneWatchingState value,
          $Res Function(EveryOneWatchingState) then) =
      _$EveryOneWatchingStateCopyWithImpl<$Res, EveryOneWatchingState>;
  @useResult
  $Res call(
      {bool isloading,
      bool isError,
      List<EveryoneWatchingResult> getDetails,
      List<EveryoneWatchingResult> upcoming});
}

/// @nodoc
class _$EveryOneWatchingStateCopyWithImpl<$Res,
        $Val extends EveryOneWatchingState>
    implements $EveryOneWatchingStateCopyWith<$Res> {
  _$EveryOneWatchingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? isError = null,
    Object? getDetails = null,
    Object? upcoming = null,
  }) {
    return _then(_value.copyWith(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      getDetails: null == getDetails
          ? _value.getDetails
          : getDetails // ignore: cast_nullable_to_non_nullable
              as List<EveryoneWatchingResult>,
      upcoming: null == upcoming
          ? _value.upcoming
          : upcoming // ignore: cast_nullable_to_non_nullable
              as List<EveryoneWatchingResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EveryOneWatchingStateImplCopyWith<$Res>
    implements $EveryOneWatchingStateCopyWith<$Res> {
  factory _$$EveryOneWatchingStateImplCopyWith(
          _$EveryOneWatchingStateImpl value,
          $Res Function(_$EveryOneWatchingStateImpl) then) =
      __$$EveryOneWatchingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isloading,
      bool isError,
      List<EveryoneWatchingResult> getDetails,
      List<EveryoneWatchingResult> upcoming});
}

/// @nodoc
class __$$EveryOneWatchingStateImplCopyWithImpl<$Res>
    extends _$EveryOneWatchingStateCopyWithImpl<$Res,
        _$EveryOneWatchingStateImpl>
    implements _$$EveryOneWatchingStateImplCopyWith<$Res> {
  __$$EveryOneWatchingStateImplCopyWithImpl(_$EveryOneWatchingStateImpl _value,
      $Res Function(_$EveryOneWatchingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? isError = null,
    Object? getDetails = null,
    Object? upcoming = null,
  }) {
    return _then(_$EveryOneWatchingStateImpl(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      getDetails: null == getDetails
          ? _value._getDetails
          : getDetails // ignore: cast_nullable_to_non_nullable
              as List<EveryoneWatchingResult>,
      upcoming: null == upcoming
          ? _value._upcoming
          : upcoming // ignore: cast_nullable_to_non_nullable
              as List<EveryoneWatchingResult>,
    ));
  }
}

/// @nodoc

class _$EveryOneWatchingStateImpl implements _EveryOneWatchingState {
  const _$EveryOneWatchingStateImpl(
      {required this.isloading,
      required this.isError,
      required final List<EveryoneWatchingResult> getDetails,
      required final List<EveryoneWatchingResult> upcoming})
      : _getDetails = getDetails,
        _upcoming = upcoming;

  @override
  final bool isloading;
  @override
  final bool isError;
  final List<EveryoneWatchingResult> _getDetails;
  @override
  List<EveryoneWatchingResult> get getDetails {
    if (_getDetails is EqualUnmodifiableListView) return _getDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_getDetails);
  }

  final List<EveryoneWatchingResult> _upcoming;
  @override
  List<EveryoneWatchingResult> get upcoming {
    if (_upcoming is EqualUnmodifiableListView) return _upcoming;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upcoming);
  }

  @override
  String toString() {
    return 'EveryOneWatchingState(isloading: $isloading, isError: $isError, getDetails: $getDetails, upcoming: $upcoming)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EveryOneWatchingStateImpl &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other._getDetails, _getDetails) &&
            const DeepCollectionEquality().equals(other._upcoming, _upcoming));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isloading,
      isError,
      const DeepCollectionEquality().hash(_getDetails),
      const DeepCollectionEquality().hash(_upcoming));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EveryOneWatchingStateImplCopyWith<_$EveryOneWatchingStateImpl>
      get copyWith => __$$EveryOneWatchingStateImplCopyWithImpl<
          _$EveryOneWatchingStateImpl>(this, _$identity);
}

abstract class _EveryOneWatchingState implements EveryOneWatchingState {
  const factory _EveryOneWatchingState(
          {required final bool isloading,
          required final bool isError,
          required final List<EveryoneWatchingResult> getDetails,
          required final List<EveryoneWatchingResult> upcoming}) =
      _$EveryOneWatchingStateImpl;

  @override
  bool get isloading;
  @override
  bool get isError;
  @override
  List<EveryoneWatchingResult> get getDetails;
  @override
  List<EveryoneWatchingResult> get upcoming;
  @override
  @JsonKey(ignore: true)
  _$$EveryOneWatchingStateImplCopyWith<_$EveryOneWatchingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
