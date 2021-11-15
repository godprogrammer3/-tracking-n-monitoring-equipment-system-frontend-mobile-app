part of 'authen_bloc.dart';

@freezed
class AuthenState with _$AuthenState {
  const factory AuthenState() = _AuthenState;
  factory AuthenState.initial() => const AuthenState();
}
