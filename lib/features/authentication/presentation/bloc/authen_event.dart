part of 'authen_bloc.dart';

@freezed
class AuthenEvent with _$AuthenEvent {
  const factory AuthenEvent.authCheckRequested() = AuthCheckRequested;
  const factory AuthenEvent.signedOut() = SignedOut;
}
