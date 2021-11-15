import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_failure.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend/features/authentication/domain/value_objects/value_objects.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final AuthenticationRepository _authenticationRepository;

  SignInFormBloc(this._authenticationRepository)
      : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(SignInFormEvent event) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authenticatonFailureOrSuccess: null,
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authenticatonFailureOrSuccess: null,
        );
      },
      registerWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
            _authenticationRepository.registerWithEmailAndPassword);
      },
      signinWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
            _authenticationRepository.signInWithEmailAndPassword);
      },
      signinWithGooglePressed: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          authenticatonFailureOrSuccess: null,
        );
        final failureOrSuccess =
            await _authenticationRepository.signInWithGoogle();
        yield state.copyWith(
          isSubmitting: false,
          authenticatonFailureOrSuccess: failureOrSuccess,
        );
      },
      toggleShowPasswordPressed: (e) async* {
        yield state.copyWith(isShowPassword: !state.isShowPassword);
      },
    );
  }

  Stream<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthenticatonFailure, Unit>> Function(
            {required EmailAddress emailAddress, required Password password})
        forwardCall,
  ) async* {
    Either<AuthenticatonFailure, Unit>? failureOrSuccess;
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authenticatonFailureOrSuccess: null,
      );

      failureOrSuccess = await forwardCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }

    yield state.copyWith(
      isSubmitting: false,
      isShowErrorMessage: true,
      authenticatonFailureOrSuccess: failureOrSuccess,
    );
  }
}
