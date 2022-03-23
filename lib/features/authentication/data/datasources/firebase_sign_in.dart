import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:frontend/core/value_objects/value_objects.dart';
import 'package:frontend/features/authentication/domain/entities/user.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_failure.dart';
import 'package:frontend/features/authentication/domain/value_objects/value_objects.dart';
import 'package:injectable/injectable.dart';

@injectable
class FirebaseSignInAuth {
  final FirebaseAuth _firebaseAuth;

  FirebaseSignInAuth(this._firebaseAuth);

  Future<Either<AuthenticationFailure, Unit>> createUserWithEmailAndPassword(
    String emailAddress,
    String password,
  ) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthenticationFailure.emailAlreadyInUse());
      } else {
        return left(const AuthenticationFailure.serverError());
      }
    }
  }

  Future<Either<AuthenticationFailure, Unit>> signInWithEmailAndPassword(
    String emailAddress,
    String password,
  ) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailAddress, password: password);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      debugPrint(e.toString());
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(
          const AuthenticationFailure.invalidEmailAndPasswordCombination(),
        );
      } else {
        return left(const AuthenticationFailure.serverError());
      }
    }
  }

  Future<UserCredential> signInWithCredential(
    AuthCredential authCredential,
  ) async {
    return _firebaseAuth.signInWithCredential(authCredential);
  }

  Future<UserType?> getCurrentUser() async {
    final user = _firebaseAuth.currentUser;
    if (user != null) {
      final userInfo = user.providerData[0];
      return UserType(
        id: UniqueId.fromUniqueString(user.uid),
        emailAddress: EmailAddress(userInfo.email ?? ''),
        providerId: userInfo.providerId,
      );
    } else {
      return null;
    }
  }

  Future<void> signOut() async {
    _firebaseAuth.signOut();
  }
}
