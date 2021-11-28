// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i17;
import 'package:flutter/material.dart' as _i18;

import '../../../features/authentication/presentation/pages/register/date_picker_test.dart'
    as _i16;
import '../../../features/authentication/presentation/pages/register/register_completed.dart'
    as _i13;
import '../../../features/authentication/presentation/pages/register/register_enter_email.dart'
    as _i7;
import '../../../features/authentication/presentation/pages/register/register_enter_name_page.dart'
    as _i4;
import '../../../features/authentication/presentation/pages/register/register_enter_otp.dart'
    as _i6;
import '../../../features/authentication/presentation/pages/register/register_enter_password.dart'
    as _i8;
import '../../../features/authentication/presentation/pages/register/register_enter_phone_number.dart'
    as _i5;
import '../../../features/authentication/presentation/pages/register/register_enter_pin_setting.dart'
    as _i10;
import '../../../features/authentication/presentation/pages/register/register_enter_pin_setting_confirm.dart'
    as _i11;
import '../../../features/authentication/presentation/pages/register/register_enter_role.dart'
    as _i9;
import '../../../features/authentication/presentation/pages/register/register_profile_data.dart'
    as _i14;
import '../../../features/authentication/presentation/pages/register/register_profile_data_form.dart'
    as _i15;
import '../../../features/authentication/presentation/pages/register/register_verify_email.dart'
    as _i12;
import '../../../features/authentication/presentation/pages/register/register_welcome_page.dart'
    as _i3;
import '../../../features/authentication/presentation/pages/sign_in/sing_in_page.dart'
    as _i2;
import '../page/splash.dart' as _i1;

class AppRouter extends _i17.RootStackRouter {
  AppRouter([_i18.GlobalKey<_i18.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i17.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SignInPage());
    },
    RegisterWelcomeRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RegisterWelcomePage());
    },
    RegisterEnterNameRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.RegisterEnterNamePage());
    },
    RegisterEnterPhoneNumberRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i5.RegisterEnterPhoneNumberPage());
    },
    RegisterEnterOTPRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.RegisterEnterOTPPage());
    },
    RegisterEnterEmailRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.RegisterEnterEmailPage());
    },
    RegisterEnterPasswordRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.RegisterEnterPasswordPage());
    },
    RegisterEnterRoleRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.RegisterEnterRolePage());
    },
    RegisterEnterPinSettingRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i10.RegisterEnterPinSettingPage());
    },
    RegisterEnterPinSettingConfirmRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i11.RegisterEnterPinSettingConfirmPage());
    },
    RegisterVerifyEmailRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.RegisterVerifyEmailPage());
    },
    RegisterCompletedRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.RegisterCompletedPage());
    },
    RegisterProfileDataRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.RegisterProfileDataPage());
    },
    RegisterProfileDataFormRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i15.RegisterProfileDataFormPage());
    },
    DatePickerTestRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.DatePickerTestPage());
    }
  };

  @override
  List<_i17.RouteConfig> get routes => [
        _i17.RouteConfig(SplashRoute.name, path: '/'),
        _i17.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i17.RouteConfig(RegisterWelcomeRoute.name,
            path: '/register-welcome-page'),
        _i17.RouteConfig(RegisterEnterNameRoute.name,
            path: '/register-enter-name-page'),
        _i17.RouteConfig(RegisterEnterPhoneNumberRoute.name,
            path: '/register-enter-phone-number-page'),
        _i17.RouteConfig(RegisterEnterOTPRoute.name,
            path: '/register-enter-ot-pPage'),
        _i17.RouteConfig(RegisterEnterEmailRoute.name,
            path: '/register-enter-email-page'),
        _i17.RouteConfig(RegisterEnterPasswordRoute.name,
            path: '/register-enter-password-page'),
        _i17.RouteConfig(RegisterEnterRoleRoute.name,
            path: '/register-enter-role-page'),
        _i17.RouteConfig(RegisterEnterPinSettingRoute.name,
            path: '/register-enter-pin-setting-page'),
        _i17.RouteConfig(RegisterEnterPinSettingConfirmRoute.name,
            path: '/register-enter-pin-setting-confirm-page'),
        _i17.RouteConfig(RegisterVerifyEmailRoute.name,
            path: '/register-verify-email-page'),
        _i17.RouteConfig(RegisterCompletedRoute.name,
            path: '/register-completed-page'),
        _i17.RouteConfig(RegisterProfileDataRoute.name,
            path: '/register-profile-data-page'),
        _i17.RouteConfig(RegisterProfileDataFormRoute.name,
            path: '/register-profile-data-form-page'),
        _i17.RouteConfig(DatePickerTestRoute.name,
            path: '/date-picker-test-page')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashRoute extends _i17.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for [_i2.SignInPage]
class SignInRoute extends _i17.PageRouteInfo<void> {
  const SignInRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for [_i3.RegisterWelcomePage]
class RegisterWelcomeRoute extends _i17.PageRouteInfo<void> {
  const RegisterWelcomeRoute() : super(name, path: '/register-welcome-page');

  static const String name = 'RegisterWelcomeRoute';
}

/// generated route for [_i4.RegisterEnterNamePage]
class RegisterEnterNameRoute extends _i17.PageRouteInfo<void> {
  const RegisterEnterNameRoute()
      : super(name, path: '/register-enter-name-page');

  static const String name = 'RegisterEnterNameRoute';
}

/// generated route for [_i5.RegisterEnterPhoneNumberPage]
class RegisterEnterPhoneNumberRoute extends _i17.PageRouteInfo<void> {
  const RegisterEnterPhoneNumberRoute()
      : super(name, path: '/register-enter-phone-number-page');

  static const String name = 'RegisterEnterPhoneNumberRoute';
}

/// generated route for [_i6.RegisterEnterOTPPage]
class RegisterEnterOTPRoute extends _i17.PageRouteInfo<void> {
  const RegisterEnterOTPRoute() : super(name, path: '/register-enter-ot-pPage');

  static const String name = 'RegisterEnterOTPRoute';
}

/// generated route for [_i7.RegisterEnterEmailPage]
class RegisterEnterEmailRoute extends _i17.PageRouteInfo<void> {
  const RegisterEnterEmailRoute()
      : super(name, path: '/register-enter-email-page');

  static const String name = 'RegisterEnterEmailRoute';
}

/// generated route for [_i8.RegisterEnterPasswordPage]
class RegisterEnterPasswordRoute extends _i17.PageRouteInfo<void> {
  const RegisterEnterPasswordRoute()
      : super(name, path: '/register-enter-password-page');

  static const String name = 'RegisterEnterPasswordRoute';
}

/// generated route for [_i9.RegisterEnterRolePage]
class RegisterEnterRoleRoute extends _i17.PageRouteInfo<void> {
  const RegisterEnterRoleRoute()
      : super(name, path: '/register-enter-role-page');

  static const String name = 'RegisterEnterRoleRoute';
}

/// generated route for [_i10.RegisterEnterPinSettingPage]
class RegisterEnterPinSettingRoute extends _i17.PageRouteInfo<void> {
  const RegisterEnterPinSettingRoute()
      : super(name, path: '/register-enter-pin-setting-page');

  static const String name = 'RegisterEnterPinSettingRoute';
}

/// generated route for [_i11.RegisterEnterPinSettingConfirmPage]
class RegisterEnterPinSettingConfirmRoute extends _i17.PageRouteInfo<void> {
  const RegisterEnterPinSettingConfirmRoute()
      : super(name, path: '/register-enter-pin-setting-confirm-page');

  static const String name = 'RegisterEnterPinSettingConfirmRoute';
}

/// generated route for [_i12.RegisterVerifyEmailPage]
class RegisterVerifyEmailRoute extends _i17.PageRouteInfo<void> {
  const RegisterVerifyEmailRoute()
      : super(name, path: '/register-verify-email-page');

  static const String name = 'RegisterVerifyEmailRoute';
}

/// generated route for [_i13.RegisterCompletedPage]
class RegisterCompletedRoute extends _i17.PageRouteInfo<void> {
  const RegisterCompletedRoute()
      : super(name, path: '/register-completed-page');

  static const String name = 'RegisterCompletedRoute';
}

/// generated route for [_i14.RegisterProfileDataPage]
class RegisterProfileDataRoute extends _i17.PageRouteInfo<void> {
  const RegisterProfileDataRoute()
      : super(name, path: '/register-profile-data-page');

  static const String name = 'RegisterProfileDataRoute';
}

/// generated route for [_i15.RegisterProfileDataFormPage]
class RegisterProfileDataFormRoute extends _i17.PageRouteInfo<void> {
  const RegisterProfileDataFormRoute()
      : super(name, path: '/register-profile-data-form-page');

  static const String name = 'RegisterProfileDataFormRoute';
}

/// generated route for [_i16.DatePickerTestPage]
class DatePickerTestRoute extends _i17.PageRouteInfo<void> {
  const DatePickerTestRoute() : super(name, path: '/date-picker-test-page');

  static const String name = 'DatePickerTestRoute';
}
