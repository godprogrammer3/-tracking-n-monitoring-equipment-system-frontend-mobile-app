import 'package:flutter/material.dart';
import 'package:frontend/features/authentication/presentation/pages/sing_in_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
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
            bodyText1: TextStyle(
              color: Color.fromRGBO(35, 25, 47, 1),
            ),
          ),
        ),
        home: SignInPage());
  }
}
