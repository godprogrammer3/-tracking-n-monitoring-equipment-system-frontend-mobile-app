import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/widgets/app_widget.dart';
import 'package:frontend/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configurationInjection(Env.sit);
  runApp(AppWidget());
}
