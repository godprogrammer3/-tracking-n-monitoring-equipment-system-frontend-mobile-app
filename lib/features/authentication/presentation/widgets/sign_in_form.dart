import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/features/authentication/presentation/bloc/sign_in_form_bloc.dart';

class SignInForm extends StatelessWidget {
  Widget getErrorWidget(BuildContext context, String? errorMessage) {
    final isShowError = context.read<SignInFormBloc>().state.isShowErrorMessage;
    if (isShowError) {
      if (errorMessage != null) {
        return Text(
          errorMessage,
          style: const TextStyle(color: Colors.red),
        );
      } else {
        return Container();
      }
    } else {
      return Container();
    }
  }

  String? getEmailErrorMessage(BuildContext context) {
    return context.read<SignInFormBloc>().state.emailAddress.value.fold(
          (f) => f.maybeMap(
            invalidEmail: (_) => 'Email ไม่ถูกต้อง',
            orElse: () => null,
          ),
          (_) => null,
        );
  }

  String? getPasswordErrorMessage(BuildContext context) {
    return context.read<SignInFormBloc>().state.password.value.fold(
          (f) => f.maybeMap(
            shortPassword: (_) => 'Password ไม่ถูกต้อง',
            orElse: () => null,
          ),
          (_) => null,
        );
  }

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
                        'assets/images/authentication_feature/name-image.png',
                        height: 100,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Email',
                                style: TextStyle(fontSize: 20),
                              ),
                              getErrorWidget(
                                context,
                                getEmailErrorMessage(context),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                              color: const Color.fromRGBO(246, 245, 248, 1),
                              border: (getErrorWidget(
                                context,
                                getEmailErrorMessage(context),
                              ) is Container)
                                  ? null
                                  : Border.all(color: Colors.red),
                            ),
                            height: 50,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextFormField(
                                  style: const TextStyle(fontSize: 20),
                                  decoration: const InputDecoration(
                                    hintText: 'Email',
                                  ),
                                  autocorrect: false,
                                  onChanged: (value) =>
                                      context.read<SignInFormBloc>().add(
                                            SignInFormEvent.emailChanged(value),
                                          ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Password',
                                style: TextStyle(fontSize: 20),
                              ),
                              getErrorWidget(
                                context,
                                getPasswordErrorMessage(context),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                              color: const Color.fromRGBO(246, 245, 248, 1),
                              border: (getErrorWidget(
                                context,
                                getPasswordErrorMessage(context),
                              ) is Container)
                                  ? null
                                  : Border.all(color: Colors.red),
                            ),
                            height: 50,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextFormField(
                                  style: const TextStyle(fontSize: 20),
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        state.isShowPassword
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Colors.grey,
                                      ),
                                      onPressed: () =>
                                          context.read<SignInFormBloc>().add(
                                                const ToggleShowPasswordPressed(),
                                              ),
                                    ),
                                  ),
                                  autocorrect: false,
                                  obscureText: !state.isShowPassword,
                                  onChanged: (value) => context
                                      .read<SignInFormBloc>()
                                      .add(
                                        SignInFormEvent.passwordChanged(value),
                                      ),
                                  validator: (_) => context
                                      .read<SignInFormBloc>()
                                      .state
                                      .password
                                      .value
                                      .fold(
                                        (f) => f.maybeMap(
                                          shortPassword: (_) =>
                                              'Short Password',
                                          orElse: () => null,
                                        ),
                                        (_) => null,
                                      ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'ลืมรหัสผ่าน ?',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
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
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        context.read<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .signinWithEmailAndPasswordPressed(),
                            );
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColorDark,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                          child: Text(
                            'เข้าสู่ระบบ',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )),
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
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Text('หรือ'),
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
                    const Text('ยังไม่ได้เป็นสมาชิกใช่หรือไม่'),
                    const SizedBox(
                      width: 5,
                    ),
                    TextButton(
                        onPressed: () {
                          context.read<SignInFormBloc>().add(
                                const SignInFormEvent
                                    .registerWithEmailAndPasswordPressed(),
                              );
                        },
                        child: Text(
                          'สมัครสมาชิก',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ))
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
