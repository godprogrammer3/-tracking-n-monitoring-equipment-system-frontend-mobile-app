import 'package:firebase_auth/firebase_auth.dart';
import 'package:frontend/core/value_objects/value_objects.dart';
import 'package:frontend/features/authentication/domain/entities/user.dart';
import 'package:frontend/features/authentication/domain/value_objects/value_objects.dart';

extension FirebaseUserDomain on User {
  UserType toDomain() {
    return UserType(
      id: UniqueId.fromUniqueString(uid),
      emailAddress: EmailAddress(''),
      providerId: '',
    );
  }
}
