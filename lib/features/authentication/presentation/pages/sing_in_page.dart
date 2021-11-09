import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/features/authentication/presentation/bloc/bloc/sign_in_form_bloc.dart';
import 'package:frontend/features/authentication/presentation/widgets/sign_in_form.dart';
import 'package:frontend/injection.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => getIt<SignInFormBloc>(),
          child: SignInForm(),
        ),
      ),
    );
  }
}
