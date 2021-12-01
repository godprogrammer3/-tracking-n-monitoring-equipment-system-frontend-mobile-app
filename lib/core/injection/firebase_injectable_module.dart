import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:twitter_login/twitter_login.dart';

@module
abstract class FirebaseInjectableModule {
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();

  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FacebookAuth get facebookSignin => FacebookAuth.instance;
  @lazySingleton
  TwitterLogin get twitterSignin => TwitterLogin(
        apiKey: 'qZ5mQkXzNtKaH4NWrtFd2C4IY',
        apiSecretKey: 'U4yTiqC4x2G1alBpAd3B8mD3ruGRCYpHVpIqM1PSBVTUbXQbsk',
        redirectURI: 'twittersdk://',
      );
}
