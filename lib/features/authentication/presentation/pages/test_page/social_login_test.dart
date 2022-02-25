import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/features/authentication/domain/entities/user.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend/features/authentication/presentation/bloc/authen_bloc.dart';
import 'package:frontend/injection.dart';

class SocialLoginTestPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final user = useFuture<UserType?>(
      getIt<AuthenticationRepository>().getSignedInUser(),
    );
    return Scaffold(
        appBar: AppBar(
          title: const Text('Social Login Test'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'login provider: ${user.hasData ? user.data?.providerId : ''}',
                    style: Theme.of(context).primaryTextTheme.headline1,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'email: ${user.hasData ? user.data?.emailAddress.getOrCrash() : ''}',
                    style: Theme.of(context).primaryTextTheme.headline1,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () =>
                        getIt<AuthenBloc>()..add(const AuthenEvent.signedOut()),
                    child: const Text('Sign Out'),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
