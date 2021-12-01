// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;

import 'core/injection/firebase_injectable_module.dart' as _i13;
import 'features/authentication/data/datasources/facebook_sign_in_auth.dart'
    as _i4;
import 'features/authentication/data/datasources/firebase_sign_in.dart' as _i6;
import 'features/authentication/data/datasources/google_sign_in_auth.dart'
    as _i8;
import 'features/authentication/data/repositories/authentication_repository_impl.dart'
    as _i10;
import 'features/authentication/domain/repositories/authentication_repository.dart'
    as _i9;
import 'features/authentication/presentation/bloc/authen_bloc.dart' as _i12;
import 'features/authentication/presentation/bloc/sign_in_form_bloc.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FacebookAuth>(
      () => firebaseInjectableModule.facebookAuth);
  gh.factory<_i4.FacebookSiginInAuth>(
      () => _i4.FacebookSiginInAuth(get<_i3.FacebookAuth>()));
  gh.lazySingleton<_i5.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.factory<_i6.FirebaseSignInAuth>(
      () => _i6.FirebaseSignInAuth(get<_i5.FirebaseAuth>()));
  gh.lazySingleton<_i7.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.factory<_i8.GoogleSignInAuth>(
      () => _i8.GoogleSignInAuth(get<_i7.GoogleSignIn>()));
  gh.lazySingleton<_i9.AuthenticationRepository>(() =>
      _i10.AuthenticationRepositoryImpl(get<_i6.FirebaseSignInAuth>(),
          get<_i8.GoogleSignInAuth>(), get<_i4.FacebookSiginInAuth>()));
  gh.factory<_i11.SignInFormBloc>(
      () => _i11.SignInFormBloc(get<_i9.AuthenticationRepository>()));
  gh.factory<_i12.AuthenBloc>(
      () => _i12.AuthenBloc(get<_i9.AuthenticationRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i13.FirebaseInjectableModule {}
