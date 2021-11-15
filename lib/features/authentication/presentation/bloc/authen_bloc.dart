import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authen_event.dart';
part 'authen_state.dart';
part 'authen_bloc.freezed.dart';

class AuthenBloc extends Bloc<AuthenEvent, AuthenState> {
  AuthenBloc() : super(AuthenState.initial());

  @override
  Stream<AuthenState> mapEventToState(AuthenEvent event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
}
