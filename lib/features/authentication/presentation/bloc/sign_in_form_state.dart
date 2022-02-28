part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required EmailAddress emailAddress,
    required Password password,
    required bool isShowErrorMessage,
    required bool isSubmitting,
    required Either<AuthenticationFailure, Unit>?
        authenticationFailureOrSuccess,
    required bool isShowPassword,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        isShowErrorMessage: false,
        isSubmitting: false,
        authenticationFailureOrSuccess: null,
        isShowPassword: false,
      );
}
