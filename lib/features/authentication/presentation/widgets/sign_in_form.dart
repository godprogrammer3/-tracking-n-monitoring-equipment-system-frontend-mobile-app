import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/input_text.dart';
import 'package:frontend/features/authentication/presentation/bloc/sign_in_form_bloc.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        if (state.authenticatonFailureOrSuccess != null) {
          state.authenticatonFailureOrSuccess!.fold(
            (failure) => FlushbarHelper.createError(
              message: failure.map(
                cancelledByUser: (_) => 'Cancelled',
                serverError: (_) => 'Server Error',
                emailAlreadyInuse: (_) => 'Email already in use',
                invalidaEmailAndPasswordCombination: (_) =>
                    'Invalide email and password combination',
              ),
            ).show(context),
            (_) => {},
          );
        }
      },
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.fromLTRB(
            screenSize.width * 0.1,
            screenSize.height * 0.05,
            screenSize.width * 0.1,
            0,
          ),
          child: Form(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/images/authentication_feature/name_image.png',
                        height: 100,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InputText(
                      label: 'Email',
                      placeHolder: 'Email',
                      onChanged: (value) => context.read<SignInFormBloc>().add(
                            EmailChanged(value),
                          ),
                      errorMessage: context
                          .read<SignInFormBloc>()
                          .state
                          .emailAddress
                          .value
                          .fold(
                            (f) => f.maybeMap(
                              invalidEmail: (_) => 'Email ไม่ถูกต้อง',
                              orElse: () => '',
                            ),
                            (_) => '',
                          ),
                      isError: context
                              .read<SignInFormBloc>()
                              .state
                              .isShowErrorMessage &&
                          context
                              .read<SignInFormBloc>()
                              .state
                              .emailAddress
                              .value
                              .isLeft(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InputText(
                      label: 'Password',
                      placeHolder: 'Password',
                      onChanged: (value) => context.read<SignInFormBloc>().add(
                            PasswordChanged(value),
                          ),
                      errorMessage: 'Password ไม่ถูกต้อง',
                      isError: context
                              .read<SignInFormBloc>()
                              .state
                              .isShowErrorMessage &&
                          context
                              .read<SignInFormBloc>()
                              .state
                              .password
                              .value
                              .isLeft(),
                      isObscureText:
                          !context.read<SignInFormBloc>().state.isShowPassword,
                      suffixIcon: IconButton(
                        icon: Icon(
                          context.read<SignInFormBloc>().state.isShowPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () => context
                            .read<SignInFormBloc>()
                            .add(const ToggleShowPasswordPressed()),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Button(
                      'เข้าสู่ระบบ',
                      onPressed: () {
                        context.read<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .signinWithEmailAndPasswordPressed(),
                            );
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Text(
                        'หรือ',
                        style: Theme.of(context).primaryTextTheme.caption,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        print('facebook sign in pressed');
                      },
                      child: SizedBox(
                        width: 80,
                        height: 80,
                        child: Image.asset(
                          'assets/icons/authentication_feature/fb.png',
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        context.read<SignInFormBloc>().add(
                              const SignInFormEvent.signinWithGooglePressed(),
                            );
                      },
                      child: SizedBox(
                        width: 80,
                        height: 80,
                        child: Image.asset(
                          'assets/icons/authentication_feature/google.png',
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print('twitter sign in pressed');
                      },
                      child: SizedBox(
                        width: 80,
                        height: 80,
                        child: Image.asset(
                          'assets/icons/authentication_feature/twitter.png',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'ยังไม่ได้เป็นสมาชิกใช่หรือไม่',
                      style: Theme.of(context).primaryTextTheme.caption,
                    ),
                    TextButton(
                      onPressed: () {
                        AutoRouter.of(context)
                            .navigate(const RegisterWelcomeRoute());
                      },
                      child: Text(
                        'สมัครสมาชิก',
                        style: Theme.of(context)
                            .primaryTextTheme
                            .caption
                            ?.copyWith(color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
