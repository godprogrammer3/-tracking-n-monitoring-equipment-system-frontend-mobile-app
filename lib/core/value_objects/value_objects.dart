import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:frontend/core/error/failures.dart';
import 'package:frontend/core/value_objects/failures.dart';
import 'package:frontend/features/authentication/domain/value_objects/value_objects.dart';
import 'package:uuid/uuid.dart';

@immutable
abstract class ValueObject<T> extends Equatable {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  /// Throws [UnExpectedValueError] contain the [ValueFailure]
  T getOrCrash() {
    // id = indentity - same as writing (ringht) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  bool isValid() => value.isRight();

  @override
  List<Object?> get props => [value];

  @override
  String toString() => 'Value($value)';
}

class UniqueId extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(right(const Uuid().v1()));
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(
      right(uniqueId),
    );
  }

  const UniqueId._(this.value);
}
