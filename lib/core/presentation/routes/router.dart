import 'package:auto_route/annotations.dart';
import 'package:frontend/core/presentation/page/splash.dart';
import 'package:frontend/features/authentication/presentation/pages/sing_in_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
  ],
)
class $AppRouter {}
