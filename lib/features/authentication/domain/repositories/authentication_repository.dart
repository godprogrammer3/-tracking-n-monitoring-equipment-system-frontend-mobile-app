import 'package:dartz/dartz.dart';
import 'package:frontend/features/authentication/domain/entities/user.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_failure.dart';
import 'package:frontend/features/authentication/domain/value_objects/value_objects.dart';

abstract class AuthenticationRepository {
  Future<UserType?> getSignedInUser();
  Future<Either<AuthenticationFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthenticationFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthenticationFailure, Unit>> signInWithGoogle();
  Future<Either<AuthenticationFailure, Unit>> signInWithFacebook();
  Future<Either<AuthenticationFailure, Unit>> signInWithTwitter();
  Future<void> signOut();
}
