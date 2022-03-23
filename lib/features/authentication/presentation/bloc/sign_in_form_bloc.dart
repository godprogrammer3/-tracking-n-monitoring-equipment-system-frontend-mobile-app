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
      : super(SignInFormState.initial()) {
    on<SignInFormEvent>((event, emit) {
      event.map(
        emailChanged: (e) {
          emit(
            state.copyWith(
              emailAddress: EmailAddress(e.emailStr),
              authenticationFailureOrSuccess: null,
            ),
          );
        },
        passwordChanged: (e) {
          emit(
            state.copyWith(
              password: Password(e.passwordStr),
              authenticationFailureOrSuccess: null,
            ),
          );
        },
        registerWithEmailAndPasswordPressed: (e) {
          _performActionOnAuthFacadeWithEmailAndPassword(
            _authenticationRepository.registerWithEmailAndPassword,
            emit,
          );
        },
        signInWithEmailAndPasswordPressed: (e) async {
          _performActionOnAuthFacadeWithEmailAndPassword(
            _authenticationRepository.signInWithEmailAndPassword,
            emit,
          );
        },
        signInWithGooglePressed: (e) async {
          emit(
            state.copyWith(
              isSubmitting: true,
              authenticationFailureOrSuccess: null,
            ),
          );
          final failureOrSuccess =
              await _authenticationRepository.signInWithGoogle();
          emit(
            state.copyWith(
              isSubmitting: false,
              authenticationFailureOrSuccess: failureOrSuccess,
            ),
          );
        },
        toggleShowPasswordPressed: (e) async {
          emit(state.copyWith(isShowPassword: !state.isShowPassword));
        },
        signInWithFacebookPressed: (e) async {
          emit(state.copyWith(
            isSubmitting: true,
            authenticationFailureOrSuccess: null,
          ));
          final failureOrSuccess =
              await _authenticationRepository.signInWithFacebook();
          emit(
            state.copyWith(
              isSubmitting: false,
              authenticationFailureOrSuccess: failureOrSuccess,
            ),
          );
        },
        signInWithTwitterPressed: (e) async {
          emit(state.copyWith(
            isSubmitting: true,
            authenticationFailureOrSuccess: null,
          ));
          final failureOrSuccess =
              await _authenticationRepository.signInWithTwitter();
          emit(
            state.copyWith(
              isSubmitting: false,
              authenticationFailureOrSuccess: failureOrSuccess,
            ),
          );
        },
      );
    });
  }

  Future<void> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthenticationFailure, Unit>> Function({
      required EmailAddress emailAddress,
      required Password password,
    })
        forwardCall,
    Emitter<SignInFormState> emit,
  ) async {
    Either<AuthenticationFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    if (isEmailValid && isPasswordValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          authenticationFailureOrSuccess: null,
        ),
      );

      failureOrSuccess = await forwardCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }

    emit(
      state.copyWith(
        isSubmitting: false,
        isShowErrorMessage: true,
        authenticationFailureOrSuccess: failureOrSuccess,
      ),
    );
  }
}
