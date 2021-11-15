// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthenEventTearOff {
  const _$AuthenEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $AuthenEvent = _$AuthenEventTearOff();

/// @nodoc
mixin _$AuthenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenEventCopyWith<$Res> {
  factory $AuthenEventCopyWith(
          AuthenEvent value, $Res Function(AuthenEvent) then) =
      _$AuthenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenEventCopyWithImpl<$Res> implements $AuthenEventCopyWith<$Res> {
  _$AuthenEventCopyWithImpl(this._value, this._then);

  final AuthenEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$AuthenEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AuthenEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthenEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$AuthenStateTearOff {
  const _$AuthenStateTearOff();

  _AuthenState call() {
    return const _AuthenState();
  }
}

/// @nodoc
const $AuthenState = _$AuthenStateTearOff();

/// @nodoc
mixin _$AuthenState {}

/// @nodoc
abstract class $AuthenStateCopyWith<$Res> {
  factory $AuthenStateCopyWith(
          AuthenState value, $Res Function(AuthenState) then) =
      _$AuthenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenStateCopyWithImpl<$Res> implements $AuthenStateCopyWith<$Res> {
  _$AuthenStateCopyWithImpl(this._value, this._then);

  final AuthenState _value;
  // ignore: unused_field
  final $Res Function(AuthenState) _then;
}

/// @nodoc
abstract class _$AuthenStateCopyWith<$Res> {
  factory _$AuthenStateCopyWith(
          _AuthenState value, $Res Function(_AuthenState) then) =
      __$AuthenStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthenStateCopyWithImpl<$Res> extends _$AuthenStateCopyWithImpl<$Res>
    implements _$AuthenStateCopyWith<$Res> {
  __$AuthenStateCopyWithImpl(
      _AuthenState _value, $Res Function(_AuthenState) _then)
      : super(_value, (v) => _then(v as _AuthenState));

  @override
  _AuthenState get _value => super._value as _AuthenState;
}

/// @nodoc

class _$_AuthenState implements _AuthenState {
  const _$_AuthenState();

  @override
  String toString() {
    return 'AuthenState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AuthenState);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _AuthenState implements AuthenState {
  const factory _AuthenState() = _$_AuthenState;
}
