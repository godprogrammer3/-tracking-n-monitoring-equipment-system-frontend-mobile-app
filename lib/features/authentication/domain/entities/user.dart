import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/core/value_objects/value_objects.dart';

part 'user.freezed.dart';

@freezed
class UserType with _$UserType {
  const factory UserType({
    required UniqueId id,
  }) = _User;
}
