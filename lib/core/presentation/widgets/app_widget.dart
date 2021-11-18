import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/features/authentication/presentation/bloc/authen_bloc.dart';
import 'package:frontend/injection.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthenBloc>()..add(const AuthenEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp.router(
        title: 'toollo',
        debugShowCheckedModeBanner: false,
        theme: theme.copyWith(
          primaryColor: const Color.fromRGBO(85, 8, 182, 1),
          primaryColorDark: const Color.fromRGBO(35, 25, 47, 1),
          colorScheme: theme.colorScheme.copyWith(
            secondary: const Color.fromRGBO(128, 36, 244, 1),
          ),
          inputDecorationTheme:
              const InputDecorationTheme(border: InputBorder.none),
          primaryTextTheme: const TextTheme(
            headline1: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
            bodyText1: TextStyle(
              color: Color.fromRGBO(35, 25, 47, 1),
              fontSize: 20,
            ),
            caption: TextStyle(
              color: Color.fromRGBO(60, 60, 67, 0.6),
              fontSize: 15,
            ),
          ),
        ),
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
      ),
    );
  }
}
