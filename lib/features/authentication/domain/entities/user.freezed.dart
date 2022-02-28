// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserTypeTearOff {
  const _$UserTypeTearOff();

  _User call(
      {required UniqueId id,
      required EmailAddress emailAddress,
      required String providerId}) {
    return _User(
      id: id,
      emailAddress: emailAddress,
      providerId: providerId,
    );
  }
}

/// @nodoc
const $UserType = _$UserTypeTearOff();

/// @nodoc
mixin _$UserType {
  UniqueId get id => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  String get providerId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserTypeCopyWith<UserType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTypeCopyWith<$Res> {
  factory $UserTypeCopyWith(UserType value, $Res Function(UserType) then) =
      _$UserTypeCopyWithImpl<$Res>;
  $Res call({UniqueId id, EmailAddress emailAddress, String providerId});
}

/// @nodoc
class _$UserTypeCopyWithImpl<$Res> implements $UserTypeCopyWith<$Res> {
  _$UserTypeCopyWithImpl(this._value, this._then);

  final UserType _value;
  // ignore: unused_field
  final $Res Function(UserType) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? emailAddress = freezed,
    Object? providerId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      providerId: providerId == freezed
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserTypeCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, EmailAddress emailAddress, String providerId});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserTypeCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? emailAddress = freezed,
    Object? providerId = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      providerId: providerId == freezed
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_User implements _User {
  const _$_User(
      {required this.id, required this.emailAddress, required this.providerId});

  @override
  final UniqueId id;
  @override
  final EmailAddress emailAddress;
  @override
  final String providerId;

  @override
  String toString() {
    return 'UserType(id: $id, emailAddress: $emailAddress, providerId: $providerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality()
                .equals(other.providerId, providerId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(providerId));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements UserType {
  const factory _User(
      {required UniqueId id,
      required EmailAddress emailAddress,
      required String providerId}) = _$_User;

  @override
  UniqueId get id;
  @override
  EmailAddress get emailAddress;
  @override
  String get providerId;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
