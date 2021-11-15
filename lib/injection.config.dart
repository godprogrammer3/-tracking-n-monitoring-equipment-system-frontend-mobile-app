// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'core/injection/firebase_injectable_module.dart' as _i10;
import 'features/authentication/data/datasources/firebase_sign_in.dart' as _i4;
import 'features/authentication/data/datasources/google_sign_in_auth.dart'
    as _i6;
import 'features/authentication/data/repositories/authentication_repository_impl.dart'
    as _i8;
import 'features/authentication/domain/repositories/authentication_repository.dart'
    as _i7;
import 'features/authentication/presentation/bloc/sign_in_form_bloc.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.factory<_i4.FirebaseSignInAuth>(
      () => _i4.FirebaseSignInAuth(get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i5.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.factory<_i6.GoogleSignInAuth>(
      () => _i6.GoogleSignInAuth(get<_i5.GoogleSignIn>()));
  gh.lazySingleton<_i7.AuthenticationRepository>(() =>
      _i8.AuthenticationRepositoryImpl(
          get<_i4.FirebaseSignInAuth>(), get<_i6.GoogleSignInAuth>()));
  gh.factory<_i9.SignInFormBloc>(
      () => _i9.SignInFormBloc(get<_i7.AuthenticationRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i10.FirebaseInjectableModule {}
