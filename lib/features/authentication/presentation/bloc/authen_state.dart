part of 'authen_bloc.dart';

@freezed
class AuthenState with _$AuthenState {
  const factory AuthenState.initial() = Initial;
  const factory AuthenState.authenticated() = Authenticated;
  const factory AuthenState.unauthenticated() = Unauthenticated;
}
