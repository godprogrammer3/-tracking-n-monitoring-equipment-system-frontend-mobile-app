import 'package:flutter/material.dart';
import 'package:frontend/features/authentication/presentation/pages/sing_in_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'toollo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SignInPage());
  }
}
