import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/app_widget.dart';
import 'package:frontend/injection.dart';

void main() {
  configurationInjection(Env.sit);
  runApp(AppWidget());
}
