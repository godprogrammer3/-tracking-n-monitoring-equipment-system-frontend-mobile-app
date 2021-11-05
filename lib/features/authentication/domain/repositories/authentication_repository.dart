import 'package:dartz/dartz.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_failure.dart';
import 'package:frontend/features/authentication/domain/value_objects/value_objects.dart';

abstract class AuthenticationRepository {
  Future<Either<AuthenticatonFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthenticatonFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthenticatonFailure, Unit>> signInWithGoogle();
}
