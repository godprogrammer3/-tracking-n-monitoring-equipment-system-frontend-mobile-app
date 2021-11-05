import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_failure.freezed.dart';

@freezed
abstract class AuthenticatonFailure with _$AuthenticatonFailure {
  const factory AuthenticatonFailure.cancelledByUser() = CancelledByUser;
  const factory AuthenticatonFailure.serverError() = ServerError;
  const factory AuthenticatonFailure.emailAlreadyInuse() = EmailAlreadyInuse;
  const factory AuthenticatonFailure.invalidaEmailAndPasswordCombination() =
      InvalidaEmailAndPasswordCombination;
}
