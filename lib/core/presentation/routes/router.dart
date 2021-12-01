import 'package:auto_route/annotations.dart';
import 'package:frontend/core/presentation/page/splash.dart';
import 'package:frontend/features/authentication/presentation/pages/register/date_picker_test.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_completed.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_enter_name_page.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_enter_otp.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_enter_email.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_enter_password.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_enter_phone_number.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_enter_pin_setting.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_enter_pin_setting_confirm.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_enter_role.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_profile_data.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_profile_data_form.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_verify_email.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_welcome_page.dart';
import 'package:frontend/features/authentication/presentation/pages/sign_in/sing_in_page.dart';
import 'package:frontend/features/authentication/presentation/pages/test_page/social_login_test.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(page: RegisterWelcomePage),
    AutoRoute(page: RegisterEnterNamePage),
    AutoRoute(page: RegisterEnterPhoneNumberPage),
    AutoRoute(page: RegisterEnterOTPPage),
    AutoRoute(page: RegisterEnterEmailPage),
    AutoRoute(page: RegisterEnterPasswordPage),
    AutoRoute(page: RegisterEnterRolePage),
    AutoRoute(page: RegisterEnterPinSettingPage),
    AutoRoute(page: RegisterEnterPinSettingConfirmPage),
    AutoRoute(page: RegisterVerifyEmailPage),
    AutoRoute(page: RegisterCompletedPage),
    AutoRoute(page: RegisterProfileDataPage),
    AutoRoute(page: RegisterProfileDataFormPage),
    AutoRoute(page: DatePickerTestPage),
    AutoRoute(page: SocialLoginTestPage),
  ],
)
class $AppRouter {}
