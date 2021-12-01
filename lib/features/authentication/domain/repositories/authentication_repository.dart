import 'package:dartz/dartz.dart';

import 'package:frontend/features/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:frontend/features/authentication/domain/entities/user.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_failure.dart';
import 'package:frontend/features/authentication/domain/value_objects/value_objects.dart';
import 'package:injectable/injectable.dart';

abstract class AuthenticationRepository {
  Future<UserType?> getSignedInUser();
  Future<Either<AuthenticatonFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthenticatonFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthenticatonFailure, Unit>> signInWithGoogle();
  Future<Either<AuthenticatonFailure, Unit>> signInWithFacebook();
  Future<Either<AuthenticatonFailure, Unit>> signInWithTwitter();
  Future<void> signOut();
}
