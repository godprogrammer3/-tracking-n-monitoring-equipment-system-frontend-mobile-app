// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i34;
import 'package:flutter/material.dart' as _i43;

import '../../../features/account/presentation/pages/account.dart' as _i42;
import '../../../features/account/presentation/pages/edit_account.dart' as _i28;
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
    as _i35;
import '../../../features/borrowing/presentation/pages/unlock_locker/list_locker.dart'
    as _i40;
import '../../../features/borrowing/presentation/pages/unlock_locker/toggle_locker.dart'
    as _i41;
import '../../../features/borrowing/presentation/pages/unlock_locker/unlock_locker.dart'
    as _i39;
import '../../../features/history/presentation/pages/history.dart' as _i37;
import '../../../features/manage_locker_and_equipment/presentation/pages/add_locker.dart'
    as _i33;
import '../../../features/manage_locker_and_equipment/presentation/pages/all_locker.dart'
    as _i31;
import '../../../features/manage_locker_and_equipment/presentation/pages/manage_locker_and_equipment.dart'
    as _i30;
import '../../../features/manage_locker_and_equipment/presentation/pages/qr_scanning.dart'
    as _i32;
import '../../../features/notification/presentation/pages/notification.dart'
    as _i38;
import '../../../features/role_management/presentation/pages/account_detail.dart'
    as _i27;
import '../../../features/role_management/presentation/pages/add_user.dart'
    as _i21;
import '../../../features/role_management/presentation/pages/all_account.dart'
    as _i26;
import '../../../features/role_management/presentation/pages/approve_user.dart'
    as _i22;
import '../../../features/role_management/presentation/pages/block_account.dart'
    as _i29;
import '../../../features/role_management/presentation/pages/department_add_account.dart'
    as _i25;
import '../../../features/role_management/presentation/pages/department_detail.dart'
    as _i24;
import '../../../features/role_management/presentation/pages/department_management.dart'
    as _i23;
import '../../../features/role_management/presentation/pages/role_management.dart'
    as _i36;
import '../page/home.dart' as _i20;
import '../page/splash.dart' as _i1;

class AppRouter extends _i34.RootStackRouter {
  AppRouter([_i43.GlobalKey<_i43.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i34.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SignInPage());
    },
    RegisterWelcomeRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RegisterWelcomePage());
    },
    RegisterEnterNameRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.RegisterEnterNamePage());
    },
    RegisterEnterPhoneNumberRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i5.RegisterEnterPhoneNumberPage());
    },
    RegisterEnterOTPRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.RegisterEnterOTPPage());
    },
    RegisterEnterEmailRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.RegisterEnterEmailPage());
    },
    RegisterEnterPasswordRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.RegisterEnterPasswordPage());
    },
    RegisterEnterRoleRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.RegisterEnterRolePage());
    },
    RegisterEnterPinSettingRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i10.RegisterEnterPinSettingPage());
    },
    RegisterEnterPinSettingConfirmRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i11.RegisterEnterPinSettingConfirmPage());
    },
    RegisterVerifyEmailRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.RegisterVerifyEmailPage());
    },
    RegisterCompletedRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.RegisterCompletedPage());
    },
    RegisterProfileDataRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.RegisterProfileDataPage());
    },
    RegisterProfileDataFormRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i15.RegisterProfileDataFormPage());
    },
    SocialLoginTestRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: _i16.SocialLoginTestPage());
    },
    RegisterProfileDataCompletedRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i17.RegisterProfileDataCompletedPage());
    },
    RegisterAddFaceIdRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.RegisterAddFaceIdPage());
    },
    RegisterAddFaceIdCompletedRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i19.RegisterAddFaceIdCompletedPage());
    },
    HomeRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i20.HomePage());
    },
    AddUserRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i21.AddUserPage());
    },
    ApproveUserRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i22.ApproveUserPage());
    },
    DepartmentManagementRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i23.DepartmentManagementPage());
    },
    DepartmentDetailRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i24.DepartmentDetailPage());
    },
    DepartmentAddAccountRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i25.DepartmentAddAccountPage());
    },
    AllAccountRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i26.AllAccountPage());
    },
    AccountDetailRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i27.AccountDetailPage());
    },
    EditAccountRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i28.EditAccountPage());
    },
    BlockAccountRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i29.BlockAccountPage());
    },
    ManageLockerAndEquipmentRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: _i30.ManageLockerAndEquipmentPage());
    },
    AllLockerRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i31.AllLockerPage());
    },
    QrScanningRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i32.QrScanningPage());
    },
    AddLockerRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i33.AddLockerPage());
    },
    DashBoardRouter.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i34.EmptyRouterPage());
    },
    HistoryRouter.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i34.EmptyRouterPage());
    },
    NotificationRouter.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i34.EmptyRouterPage());
    },
    UnlockLockerRouter.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i34.EmptyRouterPage());
    },
    AccountRouter.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i34.EmptyRouterPage());
    },
    DashBoardRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: _i35.DashBoardPage());
    },
    RoleManagementRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: _i36.RoleManagementPage());
    },
    HistoryRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: _i37.HistoryPage());
    },
    NotificationRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: _i38.NotificationPage());
    },
    UnlockLockerRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i39.UnlockLockerPage());
    },
    ListLockerRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: _i40.ListLockerPage());
    },
    ToggleLockerRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ToggleLockerRouteArgs>(
          orElse: () =>
              ToggleLockerRouteArgs(lockerId: pathParams.getInt('lockerId')));
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i41.ToggleLockerPage(key: args.key, lockerId: args.lockerId));
    },
    AccountRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
          routeData: routeData, child: _i42.AccountPage());
    }
  };

  @override
  List<_i34.RouteConfig> get routes => [
        _i34.RouteConfig(SplashRoute.name, path: '/splash-page'),
        _i34.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i34.RouteConfig(RegisterWelcomeRoute.name,
            path: '/register-welcome-page'),
        _i34.RouteConfig(RegisterEnterNameRoute.name,
            path: '/register-enter-name-page'),
        _i34.RouteConfig(RegisterEnterPhoneNumberRoute.name,
            path: '/register-enter-phone-number-page'),
        _i34.RouteConfig(RegisterEnterOTPRoute.name,
            path: '/register-enter-ot-pPage'),
        _i34.RouteConfig(RegisterEnterEmailRoute.name,
            path: '/register-enter-email-page'),
        _i34.RouteConfig(RegisterEnterPasswordRoute.name,
            path: '/register-enter-password-page'),
        _i34.RouteConfig(RegisterEnterRoleRoute.name,
            path: '/register-enter-role-page'),
        _i34.RouteConfig(RegisterEnterPinSettingRoute.name,
            path: '/register-enter-pin-setting-page'),
        _i34.RouteConfig(RegisterEnterPinSettingConfirmRoute.name,
            path: '/register-enter-pin-setting-confirm-page'),
        _i34.RouteConfig(RegisterVerifyEmailRoute.name,
            path: '/register-verify-email-page'),
        _i34.RouteConfig(RegisterCompletedRoute.name,
            path: '/register-completed-page'),
        _i34.RouteConfig(RegisterProfileDataRoute.name,
            path: '/register-profile-data-page'),
        _i34.RouteConfig(RegisterProfileDataFormRoute.name,
            path: '/register-profile-data-form-page'),
        _i34.RouteConfig(SocialLoginTestRoute.name,
            path: '/social-login-test-page'),
        _i34.RouteConfig(RegisterProfileDataCompletedRoute.name,
            path: '/register-profile-data-completed-page'),
        _i34.RouteConfig(RegisterAddFaceIdRoute.name,
            path: '/register-add-face-id-page'),
        _i34.RouteConfig(RegisterAddFaceIdCompletedRoute.name,
            path: '/register-add-face-id-completed-page'),
        _i34.RouteConfig(HomeRoute.name, path: '/', children: [
          _i34.RouteConfig(DashBoardRouter.name,
              path: 'dash_board',
              parent: HomeRoute.name,
              children: [
                _i34.RouteConfig(DashBoardRoute.name,
                    path: '', parent: DashBoardRouter.name),
                _i34.RouteConfig(RoleManagementRoute.name,
                    path: 'role_management', parent: DashBoardRouter.name)
              ]),
          _i34.RouteConfig(HistoryRouter.name,
              path: 'history',
              parent: HomeRoute.name,
              children: [
                _i34.RouteConfig(HistoryRoute.name,
                    path: '', parent: HistoryRouter.name)
              ]),
          _i34.RouteConfig(NotificationRouter.name,
              path: 'notification',
              parent: HomeRoute.name,
              children: [
                _i34.RouteConfig(NotificationRoute.name,
                    path: '', parent: NotificationRouter.name)
              ]),
          _i34.RouteConfig(UnlockLockerRouter.name,
              path: 'unlock_locker',
              parent: HomeRoute.name,
              children: [
                _i34.RouteConfig(UnlockLockerRoute.name,
                    path: '', parent: UnlockLockerRouter.name),
                _i34.RouteConfig(ListLockerRoute.name,
                    path: 'list_locker', parent: UnlockLockerRouter.name),
                _i34.RouteConfig(ToggleLockerRoute.name,
                    path: ':lockerId', parent: UnlockLockerRouter.name)
              ]),
          _i34.RouteConfig(AccountRouter.name,
              path: 'account',
              parent: HomeRoute.name,
              children: [
                _i34.RouteConfig(AccountRoute.name,
                    path: '', parent: AccountRouter.name)
              ])
        ]),
        _i34.RouteConfig(AddUserRoute.name, path: '/add-user-page'),
        _i34.RouteConfig(ApproveUserRoute.name, path: '/approve-user-page'),
        _i34.RouteConfig(DepartmentManagementRoute.name,
            path: '/department-management-page'),
        _i34.RouteConfig(DepartmentDetailRoute.name,
            path: '/department-detail-page'),
        _i34.RouteConfig(DepartmentAddAccountRoute.name,
            path: '/department-add-account-page'),
        _i34.RouteConfig(AllAccountRoute.name, path: '/all-account-page'),
        _i34.RouteConfig(AccountDetailRoute.name, path: '/account-detail-page'),
        _i34.RouteConfig(EditAccountRoute.name, path: '/edit-account-page'),
        _i34.RouteConfig(BlockAccountRoute.name, path: '/block-account-page'),
        _i34.RouteConfig(ManageLockerAndEquipmentRoute.name,
            path: '/manage-locker-and-equipment-page'),
        _i34.RouteConfig(AllLockerRoute.name, path: '/all-locker-page'),
        _i34.RouteConfig(QrScanningRoute.name, path: '/qr-scanning-page'),
        _i34.RouteConfig(AddLockerRoute.name, path: '/add-locker-page')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashRoute extends _i34.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/splash-page');

  static const String name = 'SplashRoute';
}

/// generated route for [_i2.SignInPage]
class SignInRoute extends _i34.PageRouteInfo<void> {
  const SignInRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for [_i3.RegisterWelcomePage]
class RegisterWelcomeRoute extends _i34.PageRouteInfo<void> {
  const RegisterWelcomeRoute() : super(name, path: '/register-welcome-page');

  static const String name = 'RegisterWelcomeRoute';
}

/// generated route for [_i4.RegisterEnterNamePage]
class RegisterEnterNameRoute extends _i34.PageRouteInfo<void> {
  const RegisterEnterNameRoute()
      : super(name, path: '/register-enter-name-page');

  static const String name = 'RegisterEnterNameRoute';
}

/// generated route for [_i5.RegisterEnterPhoneNumberPage]
class RegisterEnterPhoneNumberRoute extends _i34.PageRouteInfo<void> {
  const RegisterEnterPhoneNumberRoute()
      : super(name, path: '/register-enter-phone-number-page');

  static const String name = 'RegisterEnterPhoneNumberRoute';
}

/// generated route for [_i6.RegisterEnterOTPPage]
class RegisterEnterOTPRoute extends _i34.PageRouteInfo<void> {
  const RegisterEnterOTPRoute() : super(name, path: '/register-enter-ot-pPage');

  static const String name = 'RegisterEnterOTPRoute';
}

/// generated route for [_i7.RegisterEnterEmailPage]
class RegisterEnterEmailRoute extends _i34.PageRouteInfo<void> {
  const RegisterEnterEmailRoute()
      : super(name, path: '/register-enter-email-page');

  static const String name = 'RegisterEnterEmailRoute';
}

/// generated route for [_i8.RegisterEnterPasswordPage]
class RegisterEnterPasswordRoute extends _i34.PageRouteInfo<void> {
  const RegisterEnterPasswordRoute()
      : super(name, path: '/register-enter-password-page');

  static const String name = 'RegisterEnterPasswordRoute';
}

/// generated route for [_i9.RegisterEnterRolePage]
class RegisterEnterRoleRoute extends _i34.PageRouteInfo<void> {
  const RegisterEnterRoleRoute()
      : super(name, path: '/register-enter-role-page');

  static const String name = 'RegisterEnterRoleRoute';
}

/// generated route for [_i10.RegisterEnterPinSettingPage]
class RegisterEnterPinSettingRoute extends _i34.PageRouteInfo<void> {
  const RegisterEnterPinSettingRoute()
      : super(name, path: '/register-enter-pin-setting-page');

  static const String name = 'RegisterEnterPinSettingRoute';
}

/// generated route for [_i11.RegisterEnterPinSettingConfirmPage]
class RegisterEnterPinSettingConfirmRoute extends _i34.PageRouteInfo<void> {
  const RegisterEnterPinSettingConfirmRoute()
      : super(name, path: '/register-enter-pin-setting-confirm-page');

  static const String name = 'RegisterEnterPinSettingConfirmRoute';
}

/// generated route for [_i12.RegisterVerifyEmailPage]
class RegisterVerifyEmailRoute extends _i34.PageRouteInfo<void> {
  const RegisterVerifyEmailRoute()
      : super(name, path: '/register-verify-email-page');

  static const String name = 'RegisterVerifyEmailRoute';
}

/// generated route for [_i13.RegisterCompletedPage]
class RegisterCompletedRoute extends _i34.PageRouteInfo<void> {
  const RegisterCompletedRoute()
      : super(name, path: '/register-completed-page');

  static const String name = 'RegisterCompletedRoute';
}

/// generated route for [_i14.RegisterProfileDataPage]
class RegisterProfileDataRoute extends _i34.PageRouteInfo<void> {
  const RegisterProfileDataRoute()
      : super(name, path: '/register-profile-data-page');

  static const String name = 'RegisterProfileDataRoute';
}

/// generated route for [_i15.RegisterProfileDataFormPage]
class RegisterProfileDataFormRoute extends _i34.PageRouteInfo<void> {
  const RegisterProfileDataFormRoute()
      : super(name, path: '/register-profile-data-form-page');

  static const String name = 'RegisterProfileDataFormRoute';
}

/// generated route for [_i16.SocialLoginTestPage]
class SocialLoginTestRoute extends _i34.PageRouteInfo<void> {
  const SocialLoginTestRoute() : super(name, path: '/social-login-test-page');

  static const String name = 'SocialLoginTestRoute';
}

/// generated route for [_i17.RegisterProfileDataCompletedPage]
class RegisterProfileDataCompletedRoute extends _i34.PageRouteInfo<void> {
  const RegisterProfileDataCompletedRoute()
      : super(name, path: '/register-profile-data-completed-page');

  static const String name = 'RegisterProfileDataCompletedRoute';
}

/// generated route for [_i18.RegisterAddFaceIdPage]
class RegisterAddFaceIdRoute extends _i34.PageRouteInfo<void> {
  const RegisterAddFaceIdRoute()
      : super(name, path: '/register-add-face-id-page');

  static const String name = 'RegisterAddFaceIdRoute';
}

/// generated route for [_i19.RegisterAddFaceIdCompletedPage]
class RegisterAddFaceIdCompletedRoute extends _i34.PageRouteInfo<void> {
  const RegisterAddFaceIdCompletedRoute()
      : super(name, path: '/register-add-face-id-completed-page');

  static const String name = 'RegisterAddFaceIdCompletedRoute';
}

/// generated route for [_i20.HomePage]
class HomeRoute extends _i34.PageRouteInfo<void> {
  const HomeRoute({List<_i34.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for [_i21.AddUserPage]
class AddUserRoute extends _i34.PageRouteInfo<void> {
  const AddUserRoute() : super(name, path: '/add-user-page');

  static const String name = 'AddUserRoute';
}

/// generated route for [_i22.ApproveUserPage]
class ApproveUserRoute extends _i34.PageRouteInfo<void> {
  const ApproveUserRoute() : super(name, path: '/approve-user-page');

  static const String name = 'ApproveUserRoute';
}

/// generated route for [_i23.DepartmentManagementPage]
class DepartmentManagementRoute extends _i34.PageRouteInfo<void> {
  const DepartmentManagementRoute()
      : super(name, path: '/department-management-page');

  static const String name = 'DepartmentManagementRoute';
}

/// generated route for [_i24.DepartmentDetailPage]
class DepartmentDetailRoute extends _i34.PageRouteInfo<void> {
  const DepartmentDetailRoute() : super(name, path: '/department-detail-page');

  static const String name = 'DepartmentDetailRoute';
}

/// generated route for [_i25.DepartmentAddAccountPage]
class DepartmentAddAccountRoute extends _i34.PageRouteInfo<void> {
  const DepartmentAddAccountRoute()
      : super(name, path: '/department-add-account-page');

  static const String name = 'DepartmentAddAccountRoute';
}

/// generated route for [_i26.AllAccountPage]
class AllAccountRoute extends _i34.PageRouteInfo<void> {
  const AllAccountRoute() : super(name, path: '/all-account-page');

  static const String name = 'AllAccountRoute';
}

/// generated route for [_i27.AccountDetailPage]
class AccountDetailRoute extends _i34.PageRouteInfo<void> {
  const AccountDetailRoute() : super(name, path: '/account-detail-page');

  static const String name = 'AccountDetailRoute';
}

/// generated route for [_i28.EditAccountPage]
class EditAccountRoute extends _i34.PageRouteInfo<void> {
  const EditAccountRoute() : super(name, path: '/edit-account-page');

  static const String name = 'EditAccountRoute';
}

/// generated route for [_i29.BlockAccountPage]
class BlockAccountRoute extends _i34.PageRouteInfo<void> {
  const BlockAccountRoute() : super(name, path: '/block-account-page');

  static const String name = 'BlockAccountRoute';
}

/// generated route for [_i30.ManageLockerAndEquipmentPage]
class ManageLockerAndEquipmentRoute extends _i34.PageRouteInfo<void> {
  const ManageLockerAndEquipmentRoute()
      : super(name, path: '/manage-locker-and-equipment-page');

  static const String name = 'ManageLockerAndEquipmentRoute';
}

/// generated route for [_i31.AllLockerPage]
class AllLockerRoute extends _i34.PageRouteInfo<void> {
  const AllLockerRoute() : super(name, path: '/all-locker-page');

  static const String name = 'AllLockerRoute';
}

/// generated route for [_i32.QrScanningPage]
class QrScanningRoute extends _i34.PageRouteInfo<void> {
  const QrScanningRoute() : super(name, path: '/qr-scanning-page');

  static const String name = 'QrScanningRoute';
}

/// generated route for [_i33.AddLockerPage]
class AddLockerRoute extends _i34.PageRouteInfo<void> {
  const AddLockerRoute() : super(name, path: '/add-locker-page');

  static const String name = 'AddLockerRoute';
}

/// generated route for [_i34.EmptyRouterPage]
class DashBoardRouter extends _i34.PageRouteInfo<void> {
  const DashBoardRouter({List<_i34.PageRouteInfo>? children})
      : super(name, path: 'dash_board', initialChildren: children);

  static const String name = 'DashBoardRouter';
}

/// generated route for [_i34.EmptyRouterPage]
class HistoryRouter extends _i34.PageRouteInfo<void> {
  const HistoryRouter({List<_i34.PageRouteInfo>? children})
      : super(name, path: 'history', initialChildren: children);

  static const String name = 'HistoryRouter';
}

/// generated route for [_i34.EmptyRouterPage]
class NotificationRouter extends _i34.PageRouteInfo<void> {
  const NotificationRouter({List<_i34.PageRouteInfo>? children})
      : super(name, path: 'notification', initialChildren: children);

  static const String name = 'NotificationRouter';
}

/// generated route for [_i34.EmptyRouterPage]
class UnlockLockerRouter extends _i34.PageRouteInfo<void> {
  const UnlockLockerRouter({List<_i34.PageRouteInfo>? children})
      : super(name, path: 'unlock_locker', initialChildren: children);

  static const String name = 'UnlockLockerRouter';
}

/// generated route for [_i34.EmptyRouterPage]
class AccountRouter extends _i34.PageRouteInfo<void> {
  const AccountRouter({List<_i34.PageRouteInfo>? children})
      : super(name, path: 'account', initialChildren: children);

  static const String name = 'AccountRouter';
}

/// generated route for [_i35.DashBoardPage]
class DashBoardRoute extends _i34.PageRouteInfo<void> {
  const DashBoardRoute() : super(name, path: '');

  static const String name = 'DashBoardRoute';
}

/// generated route for [_i36.RoleManagementPage]
class RoleManagementRoute extends _i34.PageRouteInfo<void> {
  const RoleManagementRoute() : super(name, path: 'role_management');

  static const String name = 'RoleManagementRoute';
}

/// generated route for [_i37.HistoryPage]
class HistoryRoute extends _i34.PageRouteInfo<void> {
  const HistoryRoute() : super(name, path: '');

  static const String name = 'HistoryRoute';
}

/// generated route for [_i38.NotificationPage]
class NotificationRoute extends _i34.PageRouteInfo<void> {
  const NotificationRoute() : super(name, path: '');

  static const String name = 'NotificationRoute';
}

/// generated route for [_i39.UnlockLockerPage]
class UnlockLockerRoute extends _i34.PageRouteInfo<void> {
  const UnlockLockerRoute() : super(name, path: '');

  static const String name = 'UnlockLockerRoute';
}

/// generated route for [_i40.ListLockerPage]
class ListLockerRoute extends _i34.PageRouteInfo<void> {
  const ListLockerRoute() : super(name, path: 'list_locker');

  static const String name = 'ListLockerRoute';
}

/// generated route for [_i41.ToggleLockerPage]
class ToggleLockerRoute extends _i34.PageRouteInfo<ToggleLockerRouteArgs> {
  ToggleLockerRoute({_i43.Key? key, required int lockerId})
      : super(name,
            path: ':lockerId',
            args: ToggleLockerRouteArgs(key: key, lockerId: lockerId),
            rawPathParams: {'lockerId': lockerId});

  static const String name = 'ToggleLockerRoute';
}

class ToggleLockerRouteArgs {
  const ToggleLockerRouteArgs({this.key, required this.lockerId});

  final _i43.Key? key;

  final int lockerId;

  @override
  String toString() {
    return 'ToggleLockerRouteArgs{key: $key, lockerId: $lockerId}';
  }
}

/// generated route for [_i42.AccountPage]
class AccountRoute extends _i34.PageRouteInfo<void> {
  const AccountRoute() : super(name, path: '');

  static const String name = 'AccountRoute';
}
