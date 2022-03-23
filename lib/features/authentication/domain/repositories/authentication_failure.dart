import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_failure.freezed.dart';

@freezed
class AuthenticationFailure with _$AuthenticationFailure {
  const factory AuthenticationFailure.cancelledByUser() = CancelledByUser;
  const factory AuthenticationFailure.serverError() = ServerError;
  const factory AuthenticationFailure.emailAlreadyInUse() = EmailAlreadyInuse;
  const factory AuthenticationFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
}
