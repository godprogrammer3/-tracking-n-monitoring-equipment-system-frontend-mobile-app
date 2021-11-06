import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_failure.dart';
import 'package:injectable/injectable.dart';

@injectable
class FirebaseSignInAuth {
  final FirebaseAuth _firebaseAuth;

  FirebaseSignInAuth(this._firebaseAuth);

  Future<Either<AuthenticatonFailure, Unit>> createUserWithEmailAndPassword(
      String emailAddress, String password) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddress, password: password);
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthenticatonFailure.emailAlreadyInuse());
      } else {
        return left(const AuthenticatonFailure.serverError());
      }
    }
  }

  Future<Either<AuthenticatonFailure, Unit>> signInWithEmailAndPassword(
      String emailAddress, String password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailAddress, password: password);
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(
            const AuthenticatonFailure.invalidaEmailAndPasswordCombination());
      } else {
        return left(const AuthenticatonFailure.serverError());
      }
    }
  }

  Future<UserCredential> signInWithCredential(
      AuthCredential authCredential) async {
    return await _firebaseAuth.signInWithCredential(authCredential);
  }
}
