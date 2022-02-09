// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i28;
import 'package:flutter/material.dart' as _i37;

import '../../../features/account/presentation/pages/account.dart' as _i36;
import '../../../features/authentication/presentation/pages/register/register_add_face_id.dart'
    as _i18;
import '../../../features/authentication/presentation/pages/register/register_add_face_id_completed.dart'
    as _i19;
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
import '../../../features/authentication/presentation/pages/register/register_profile_data_completed.dart'
    as _i17;
import '../../../features/authentication/presentation/pages/register/register_profile_data_form.dart'
    as _i15;
import '../../../features/authentication/presentation/pages/register/register_verify_email.dart'
    as _i12;
import '../../../features/authentication/presentation/pages/register/register_welcome_page.dart'
    as _i3;
import '../../../features/authentication/presentation/pages/sign_in/sing_in_page.dart'
    as _i2;
import '../../../features/authentication/presentation/pages/test_page/social_login_test.dart'
    as _i16;
import '../../../features/borrowing/presentation/pages/dash_board/dash_board.dart'
    as _i29;
import '../../../features/borrowing/presentation/pages/unlock_locker/list_locker.dart'
    as _i34;
import '../../../features/borrowing/presentation/pages/unlock_locker/toggle_locker.dart'
    as _i35;
import '../../../features/borrowing/presentation/pages/unlock_locker/unlock_locker.dart'
    as _i33;
import '../../../features/history/presentation/pages/history.dart' as _i31;
import '../../../features/notification/presentation/pages/notification.dart'
    as _i32;
import '../../../features/role_management/presentation/pages/account_detail.dart'
    as _i27;
import '../../../features/role_management/presentation/pages/add_user.dart'
    as _i21;
import '../../../features/role_management/presentation/pages/all_account.dart'
    as _i26;
import '../../../features/role_management/presentation/pages/approve_user.dart'
    as _i22;
import '../../../features/role_management/presentation/pages/department_add_account.dart'
    as _i25;
import '../../../features/role_management/presentation/pages/department_detail.dart'
    as _i24;
import '../../../features/role_management/presentation/pages/department_management.dart'
    as _i23;
import '../../../features/role_management/presentation/pages/role_management.dart'
    as _i30;
import '../page/home.dart' as _i20;
import '../page/splash.dart' as _i1;

class AppRouter extends _i28.RootStackRouter {
  AppRouter([_i37.GlobalKey<_i37.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i28.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SignInPage());
    },
    RegisterWelcomeRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RegisterWelcomePage());
    },
    RegisterEnterNameRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.RegisterEnterNamePage());
    },
    RegisterEnterPhoneNumberRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i5.RegisterEnterPhoneNumberPage());
    },
    RegisterEnterOTPRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.RegisterEnterOTPPage());
    },
    RegisterEnterEmailRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.RegisterEnterEmailPage());
    },
    RegisterEnterPasswordRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.RegisterEnterPasswordPage());
    },
    RegisterEnterRoleRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.RegisterEnterRolePage());
    },
    RegisterEnterPinSettingRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i10.RegisterEnterPinSettingPage());
    },
    RegisterEnterPinSettingConfirmRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i11.RegisterEnterPinSettingConfirmPage());
    },
    RegisterVerifyEmailRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.RegisterVerifyEmailPage());
    },
    RegisterCompletedRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.RegisterCompletedPage());
    },
    RegisterProfileDataRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.RegisterProfileDataPage());
    },
    RegisterProfileDataFormRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i15.RegisterProfileDataFormPage());
    },
    SocialLoginTestRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: _i16.SocialLoginTestPage());
    },
    RegisterProfileDataCompletedRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i17.RegisterProfileDataCompletedPage());
    },
    RegisterAddFaceIdRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.RegisterAddFaceIdPage());
    },
    RegisterAddFaceIdCompletedRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i19.RegisterAddFaceIdCompletedPage());
    },
    HomeRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i20.HomePage());
    },
    AddUserRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i21.AddUserPage());
    },
    ApproveUserRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i22.ApproveUserPage());
    },
    DapartmentManagementRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i23.DapartmentManagementPage());
    },
    DapartmentDetailRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i24.DapartmentDetailPage());
    },
    DepartmentAddAccountRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i25.DepartmentAddAccountPage());
    },
    AllAccountRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i26.AllAccountPage());
    },
    AccountDetailRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i27.AccountDetailPage());
    },
    DashBoardRouter.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i28.EmptyRouterPage());
    },
    HistoryRouter.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i28.EmptyRouterPage());
    },
    NotificationRouter.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i28.EmptyRouterPage());
    },
    UnlockLockerRouter.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i28.EmptyRouterPage());
    },
    AccountRouter.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i28.EmptyRouterPage());
    },
    DashBoardRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: _i29.DashBoardPage());
    },
    RoleManagementRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: _i30.RoleManagementPage());
    },
    HistoryRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: _i31.HistoryPage());
    },
    NotificationRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: _i32.NotificationPage());
    },
    UnlockLockerRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i33.UnlockLockerPage());
    },
    ListLockerRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: _i34.ListLockerPage());
    },
    ToggleLockerRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ToggleLockerRouteArgs>(
          orElse: () =>
              ToggleLockerRouteArgs(lockerId: pathParams.getInt('lockerId')));
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i35.ToggleLockerPage(key: args.key, lockerId: args.lockerId));
    },
    AccountRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
          routeData: routeData, child: _i36.AccountPage());
    }
  };

  @override
  List<_i28.RouteConfig> get routes => [
        _i28.RouteConfig(SplashRoute.name, path: '/splash-page'),
        _i28.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i28.RouteConfig(RegisterWelcomeRoute.name,
            path: '/register-welcome-page'),
        _i28.RouteConfig(RegisterEnterNameRoute.name,
            path: '/register-enter-name-page'),
        _i28.RouteConfig(RegisterEnterPhoneNumberRoute.name,
            path: '/register-enter-phone-number-page'),
        _i28.RouteConfig(RegisterEnterOTPRoute.name,
            path: '/register-enter-ot-pPage'),
        _i28.RouteConfig(RegisterEnterEmailRoute.name,
            path: '/register-enter-email-page'),
        _i28.RouteConfig(RegisterEnterPasswordRoute.name,
            path: '/register-enter-password-page'),
        _i28.RouteConfig(RegisterEnterRoleRoute.name,
            path: '/register-enter-role-page'),
        _i28.RouteConfig(RegisterEnterPinSettingRoute.name,
            path: '/register-enter-pin-setting-page'),
        _i28.RouteConfig(RegisterEnterPinSettingConfirmRoute.name,
            path: '/register-enter-pin-setting-confirm-page'),
        _i28.RouteConfig(RegisterVerifyEmailRoute.name,
            path: '/register-verify-email-page'),
        _i28.RouteConfig(RegisterCompletedRoute.name,
            path: '/register-completed-page'),
        _i28.RouteConfig(RegisterProfileDataRoute.name,
            path: '/register-profile-data-page'),
        _i28.RouteConfig(RegisterProfileDataFormRoute.name,
            path: '/register-profile-data-form-page'),
        _i28.RouteConfig(SocialLoginTestRoute.name,
            path: '/social-login-test-page'),
        _i28.RouteConfig(RegisterProfileDataCompletedRoute.name,
            path: '/register-profile-data-completed-page'),
        _i28.RouteConfig(RegisterAddFaceIdRoute.name,
            path: '/register-add-face-id-page'),
        _i28.RouteConfig(RegisterAddFaceIdCompletedRoute.name,
            path: '/register-add-face-id-completed-page'),
        _i28.RouteConfig(HomeRoute.name, path: '/', children: [
          _i28.RouteConfig(DashBoardRouter.name,
              path: 'dash_board',
              parent: HomeRoute.name,
              children: [
                _i28.RouteConfig(DashBoardRoute.name,
                    path: '', parent: DashBoardRouter.name),
                _i28.RouteConfig(RoleManagementRoute.name,
                    path: 'role_management', parent: DashBoardRouter.name)
              ]),
          _i28.RouteConfig(HistoryRouter.name,
              path: 'history',
              parent: HomeRoute.name,
              children: [
                _i28.RouteConfig(HistoryRoute.name,
                    path: '', parent: HistoryRouter.name)
              ]),
          _i28.RouteConfig(NotificationRouter.name,
              path: 'notification',
              parent: HomeRoute.name,
              children: [
                _i28.RouteConfig(NotificationRoute.name,
                    path: '', parent: NotificationRouter.name)
              ]),
          _i28.RouteConfig(UnlockLockerRouter.name,
              path: 'unlock_locker',
              parent: HomeRoute.name,
              children: [
                _i28.RouteConfig(UnlockLockerRoute.name,
                    path: '', parent: UnlockLockerRouter.name),
                _i28.RouteConfig(ListLockerRoute.name,
                    path: 'list_locker', parent: UnlockLockerRouter.name),
                _i28.RouteConfig(ToggleLockerRoute.name,
                    path: ':lockerId', parent: UnlockLockerRouter.name)
              ]),
          _i28.RouteConfig(AccountRouter.name,
              path: 'account',
              parent: HomeRoute.name,
              children: [
                _i28.RouteConfig(AccountRoute.name,
                    path: '', parent: AccountRouter.name)
              ])
        ]),
        _i28.RouteConfig(AddUserRoute.name, path: '/add-user-page'),
        _i28.RouteConfig(ApproveUserRoute.name, path: '/approve-user-page'),
        _i28.RouteConfig(DapartmentManagementRoute.name,
            path: '/dapartment-management-page'),
        _i28.RouteConfig(DapartmentDetailRoute.name,
            path: '/dapartment-detail-page'),
        _i28.RouteConfig(DepartmentAddAccountRoute.name,
            path: '/department-add-account-page'),
        _i28.RouteConfig(AllAccountRoute.name, path: '/all-account-page'),
        _i28.RouteConfig(AccountDetailRoute.name, path: '/account-detail-page')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashRoute extends _i28.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/splash-page');

  static const String name = 'SplashRoute';
}

/// generated route for [_i2.SignInPage]
class SignInRoute extends _i28.PageRouteInfo<void> {
  const SignInRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for [_i3.RegisterWelcomePage]
class RegisterWelcomeRoute extends _i28.PageRouteInfo<void> {
  const RegisterWelcomeRoute() : super(name, path: '/register-welcome-page');

  static const String name = 'RegisterWelcomeRoute';
}

/// generated route for [_i4.RegisterEnterNamePage]
class RegisterEnterNameRoute extends _i28.PageRouteInfo<void> {
  const RegisterEnterNameRoute()
      : super(name, path: '/register-enter-name-page');

  static const String name = 'RegisterEnterNameRoute';
}

/// generated route for [_i5.RegisterEnterPhoneNumberPage]
class RegisterEnterPhoneNumberRoute extends _i28.PageRouteInfo<void> {
  const RegisterEnterPhoneNumberRoute()
      : super(name, path: '/register-enter-phone-number-page');

  static const String name = 'RegisterEnterPhoneNumberRoute';
}

/// generated route for [_i6.RegisterEnterOTPPage]
class RegisterEnterOTPRoute extends _i28.PageRouteInfo<void> {
  const RegisterEnterOTPRoute() : super(name, path: '/register-enter-ot-pPage');

  static const String name = 'RegisterEnterOTPRoute';
}

/// generated route for [_i7.RegisterEnterEmailPage]
class RegisterEnterEmailRoute extends _i28.PageRouteInfo<void> {
  const RegisterEnterEmailRoute()
      : super(name, path: '/register-enter-email-page');

  static const String name = 'RegisterEnterEmailRoute';
}

/// generated route for [_i8.RegisterEnterPasswordPage]
class RegisterEnterPasswordRoute extends _i28.PageRouteInfo<void> {
  const RegisterEnterPasswordRoute()
      : super(name, path: '/register-enter-password-page');

  static const String name = 'RegisterEnterPasswordRoute';
}

/// generated route for [_i9.RegisterEnterRolePage]
class RegisterEnterRoleRoute extends _i28.PageRouteInfo<void> {
  const RegisterEnterRoleRoute()
      : super(name, path: '/register-enter-role-page');

  static const String name = 'RegisterEnterRoleRoute';
}

/// generated route for [_i10.RegisterEnterPinSettingPage]
class RegisterEnterPinSettingRoute extends _i28.PageRouteInfo<void> {
  const RegisterEnterPinSettingRoute()
      : super(name, path: '/register-enter-pin-setting-page');

  static const String name = 'RegisterEnterPinSettingRoute';
}

/// generated route for [_i11.RegisterEnterPinSettingConfirmPage]
class RegisterEnterPinSettingConfirmRoute extends _i28.PageRouteInfo<void> {
  const RegisterEnterPinSettingConfirmRoute()
      : super(name, path: '/register-enter-pin-setting-confirm-page');

  static const String name = 'RegisterEnterPinSettingConfirmRoute';
}

/// generated route for [_i12.RegisterVerifyEmailPage]
class RegisterVerifyEmailRoute extends _i28.PageRouteInfo<void> {
  const RegisterVerifyEmailRoute()
      : super(name, path: '/register-verify-email-page');

  static const String name = 'RegisterVerifyEmailRoute';
}

/// generated route for [_i13.RegisterCompletedPage]
class RegisterCompletedRoute extends _i28.PageRouteInfo<void> {
  const RegisterCompletedRoute()
      : super(name, path: '/register-completed-page');

  static const String name = 'RegisterCompletedRoute';
}

/// generated route for [_i14.RegisterProfileDataPage]
class RegisterProfileDataRoute extends _i28.PageRouteInfo<void> {
  const RegisterProfileDataRoute()
      : super(name, path: '/register-profile-data-page');

  static const String name = 'RegisterProfileDataRoute';
}

/// generated route for [_i15.RegisterProfileDataFormPage]
class RegisterProfileDataFormRoute extends _i28.PageRouteInfo<void> {
  const RegisterProfileDataFormRoute()
      : super(name, path: '/register-profile-data-form-page');

  static const String name = 'RegisterProfileDataFormRoute';
}

/// generated route for [_i16.SocialLoginTestPage]
class SocialLoginTestRoute extends _i28.PageRouteInfo<void> {
  const SocialLoginTestRoute() : super(name, path: '/social-login-test-page');

  static const String name = 'SocialLoginTestRoute';
}

/// generated route for [_i17.RegisterProfileDataCompletedPage]
class RegisterProfileDataCompletedRoute extends _i28.PageRouteInfo<void> {
  const RegisterProfileDataCompletedRoute()
      : super(name, path: '/register-profile-data-completed-page');

  static const String name = 'RegisterProfileDataCompletedRoute';
}

/// generated route for [_i18.RegisterAddFaceIdPage]
class RegisterAddFaceIdRoute extends _i28.PageRouteInfo<void> {
  const RegisterAddFaceIdRoute()
      : super(name, path: '/register-add-face-id-page');

  static const String name = 'RegisterAddFaceIdRoute';
}

/// generated route for [_i19.RegisterAddFaceIdCompletedPage]
class RegisterAddFaceIdCompletedRoute extends _i28.PageRouteInfo<void> {
  const RegisterAddFaceIdCompletedRoute()
      : super(name, path: '/register-add-face-id-completed-page');

  static const String name = 'RegisterAddFaceIdCompletedRoute';
}

/// generated route for [_i20.HomePage]
class HomeRoute extends _i28.PageRouteInfo<void> {
  const HomeRoute({List<_i28.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for [_i21.AddUserPage]
class AddUserRoute extends _i28.PageRouteInfo<void> {
  const AddUserRoute() : super(name, path: '/add-user-page');

  static const String name = 'AddUserRoute';
}

/// generated route for [_i22.ApproveUserPage]
class ApproveUserRoute extends _i28.PageRouteInfo<void> {
  const ApproveUserRoute() : super(name, path: '/approve-user-page');

  static const String name = 'ApproveUserRoute';
}

/// generated route for [_i23.DapartmentManagementPage]
class DapartmentManagementRoute extends _i28.PageRouteInfo<void> {
  const DapartmentManagementRoute()
      : super(name, path: '/dapartment-management-page');

  static const String name = 'DapartmentManagementRoute';
}

/// generated route for [_i24.DapartmentDetailPage]
class DapartmentDetailRoute extends _i28.PageRouteInfo<void> {
  const DapartmentDetailRoute() : super(name, path: '/dapartment-detail-page');

  static const String name = 'DapartmentDetailRoute';
}

/// generated route for [_i25.DepartmentAddAccountPage]
class DepartmentAddAccountRoute extends _i28.PageRouteInfo<void> {
  const DepartmentAddAccountRoute()
      : super(name, path: '/department-add-account-page');

  static const String name = 'DepartmentAddAccountRoute';
}

/// generated route for [_i26.AllAccountPage]
class AllAccountRoute extends _i28.PageRouteInfo<void> {
  const AllAccountRoute() : super(name, path: '/all-account-page');

  static const String name = 'AllAccountRoute';
}

/// generated route for [_i27.AccountDetailPage]
class AccountDetailRoute extends _i28.PageRouteInfo<void> {
  const AccountDetailRoute() : super(name, path: '/account-detail-page');

  static const String name = 'AccountDetailRoute';
}

/// generated route for [_i28.EmptyRouterPage]
class DashBoardRouter extends _i28.PageRouteInfo<void> {
  const DashBoardRouter({List<_i28.PageRouteInfo>? children})
      : super(name, path: 'dash_board', initialChildren: children);

  static const String name = 'DashBoardRouter';
}

/// generated route for [_i28.EmptyRouterPage]
class HistoryRouter extends _i28.PageRouteInfo<void> {
  const HistoryRouter({List<_i28.PageRouteInfo>? children})
      : super(name, path: 'history', initialChildren: children);

  static const String name = 'HistoryRouter';
}

/// generated route for [_i28.EmptyRouterPage]
class NotificationRouter extends _i28.PageRouteInfo<void> {
  const NotificationRouter({List<_i28.PageRouteInfo>? children})
      : super(name, path: 'notification', initialChildren: children);

  static const String name = 'NotificationRouter';
}

/// generated route for [_i28.EmptyRouterPage]
class UnlockLockerRouter extends _i28.PageRouteInfo<void> {
  const UnlockLockerRouter({List<_i28.PageRouteInfo>? children})
      : super(name, path: 'unlock_locker', initialChildren: children);

  static const String name = 'UnlockLockerRouter';
}

/// generated route for [_i28.EmptyRouterPage]
class AccountRouter extends _i28.PageRouteInfo<void> {
  const AccountRouter({List<_i28.PageRouteInfo>? children})
      : super(name, path: 'account', initialChildren: children);

  static const String name = 'AccountRouter';
}

/// generated route for [_i29.DashBoardPage]
class DashBoardRoute extends _i28.PageRouteInfo<void> {
  const DashBoardRoute() : super(name, path: '');

  static const String name = 'DashBoardRoute';
}

/// generated route for [_i30.RoleManagementPage]
class RoleManagementRoute extends _i28.PageRouteInfo<void> {
  const RoleManagementRoute() : super(name, path: 'role_management');

  static const String name = 'RoleManagementRoute';
}

/// generated route for [_i31.HistoryPage]
class HistoryRoute extends _i28.PageRouteInfo<void> {
  const HistoryRoute() : super(name, path: '');

  static const String name = 'HistoryRoute';
}

/// generated route for [_i32.NotificationPage]
class NotificationRoute extends _i28.PageRouteInfo<void> {
  const NotificationRoute() : super(name, path: '');

  static const String name = 'NotificationRoute';
}

/// generated route for [_i33.UnlockLockerPage]
class UnlockLockerRoute extends _i28.PageRouteInfo<void> {
  const UnlockLockerRoute() : super(name, path: '');

  static const String name = 'UnlockLockerRoute';
}

/// generated route for [_i34.ListLockerPage]
class ListLockerRoute extends _i28.PageRouteInfo<void> {
  const ListLockerRoute() : super(name, path: 'list_locker');

  static const String name = 'ListLockerRoute';
}

/// generated route for [_i35.ToggleLockerPage]
class ToggleLockerRoute extends _i28.PageRouteInfo<ToggleLockerRouteArgs> {
  ToggleLockerRoute({_i37.Key? key, required int lockerId})
      : super(name,
            path: ':lockerId',
            args: ToggleLockerRouteArgs(key: key, lockerId: lockerId),
            rawPathParams: {'lockerId': lockerId});

  static const String name = 'ToggleLockerRoute';
}

class ToggleLockerRouteArgs {
  const ToggleLockerRouteArgs({this.key, required this.lockerId});

  final _i37.Key? key;

  final int lockerId;

  @override
  String toString() {
    return 'ToggleLockerRouteArgs{key: $key, lockerId: $lockerId}';
  }
}

/// generated route for [_i36.AccountPage]
class AccountRoute extends _i28.PageRouteInfo<void> {
  const AccountRoute() : super(name, path: '');

  static const String name = 'AccountRoute';
}
