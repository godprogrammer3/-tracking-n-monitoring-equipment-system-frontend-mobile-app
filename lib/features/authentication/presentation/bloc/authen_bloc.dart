import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:injectable/injectable.dart';

part 'authen_event.dart';
part 'authen_state.dart';
part 'authen_bloc.freezed.dart';

@injectable
class AuthenBloc extends Bloc<AuthenEvent, AuthenState> {
  final AuthenticationRepository _authenticationRepository;

  AuthenBloc(this._authenticationRepository)
      : super(const AuthenState.initial());

  @override
  Stream<AuthenState> mapEventToState(AuthenEvent event) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final user = await _authenticationRepository.getSignedInUser();
        yield user == null
            ? const AuthenState.unauthenticated()
            : const AuthenState.authenticated();
      },
      signedOut: (e) async* {
        await _authenticationRepository.signOut();
        yield const AuthenState.unauthenticated();
      },
    );
  }
}
