import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend/features/authentication/presentation/bloc/authen_bloc.dart';
import 'package:frontend/features/authentication/presentation/bloc/sign_in_form_bloc.dart';
import 'package:frontend/features/authentication/presentation/widgets/sign_in_form.dart';
import 'package:frontend/injection.dart';

class SocialLoginTestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Social Login Test'),
        ),
        body: Center(
          child: Column(
            children: [
              Row(
                children: [Text('')],
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
