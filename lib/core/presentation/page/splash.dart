import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/features/authentication/presentation/bloc/authen_bloc.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenBloc, AuthenState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            print('I am authenticated!');
          },
          unauthenticated: (_) =>
              AutoRouter.of(context).replace(const SignInRoute()),
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
