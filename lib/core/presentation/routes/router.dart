import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:frontend/core/presentation/page/add_account.dart';
import 'package:frontend/core/presentation/page/home.dart';
import 'package:frontend/core/presentation/page/splash.dart';
import 'package:frontend/features/account/presentation/pages/account.dart';
import 'package:frontend/features/account/presentation/pages/edit_account.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_add_face_id.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_add_face_id_completed.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_completed.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_enter_email.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_enter_name_page.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_enter_otp.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_enter_password.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_enter_phone_number.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_enter_pin_setting.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_enter_pin_setting_confirm.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_enter_role.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_profile_data.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_profile_data_completed.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_profile_data_form.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_verify_email.dart';
import 'package:frontend/features/authentication/presentation/pages/register/register_welcome_page.dart';
import 'package:frontend/features/authentication/presentation/pages/sign_in/sing_in_page.dart';
import 'package:frontend/features/authentication/presentation/pages/test_page/social_login_test.dart';
import 'package:frontend/features/borrowing/presentation/pages/dash_board/dash_board.dart';
import 'package:frontend/features/borrowing/presentation/pages/unlock_locker/list_locker.dart';
import 'package:frontend/features/borrowing/presentation/pages/unlock_locker/toggle_locker.dart';
import 'package:frontend/features/borrowing/presentation/pages/unlock_locker/unlock_locker.dart';
import 'package:frontend/features/fixing/presentation/pages/fixing.dart';
import 'package:frontend/features/fixing/presentation/pages/fixing_detail.dart';
import 'package:frontend/features/fixing/presentation/pages/fixing_locker_detail.dart';
import 'package:frontend/features/history/presentation/pages/history.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/pages/add_category.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/pages/add_equipment.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/pages/add_location.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/pages/add_or_edit_locker.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/pages/add_permanent_permission.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/pages/add_temporary_permission.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/pages/adding_equipment.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/pages/all_category.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/pages/all_equipment.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/pages/all_location.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/pages/all_locker.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/pages/category_detail.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/pages/change_permission_type.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/pages/equipment_detail.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/pages/locker_detail.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/pages/mac_address_help.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/pages/manage_locker_and_equipment.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/pages/manage_permission.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/pages/qr_scanning.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/pages/request_fixing_detail.dart';
import 'package:frontend/features/notification/presentation/pages/notification.dart';
import 'package:frontend/features/report_problem/presentation/pages/report_problem.dart';
import 'package:frontend/features/report_problem/presentation/pages/report_problem_detail.dart';
import 'package:frontend/features/report_problem/presentation/pages/report_problem_locker_detail.dart';
import 'package:frontend/features/report_problem/presentation/pages/solve_problem.dart';
import 'package:frontend/features/role_management/presentation/pages/account_detail.dart';
import 'package:frontend/features/role_management/presentation/pages/add_user.dart';
import 'package:frontend/features/role_management/presentation/pages/all_account.dart';
import 'package:frontend/features/role_management/presentation/pages/approve_user.dart';
import 'package:frontend/features/role_management/presentation/pages/block_account.dart';
import 'package:frontend/features/role_management/presentation/pages/department_detail.dart';
import 'package:frontend/features/role_management/presentation/pages/department_management.dart';
import 'package:frontend/features/role_management/presentation/pages/role_management.dart';
import 'package:frontend/features/streaming_and_record/presentation/pages/all_camera.dart';
import 'package:frontend/features/streaming_and_record/presentation/pages/live_camera.dart';
import 'package:frontend/features/streaming_and_record/presentation/pages/record_video.dart';
import 'package:frontend/features/streaming_and_record/presentation/pages/streaming_and_record.dart';

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
    AutoRoute(page: SocialLoginTestPage),
    AutoRoute(page: RegisterProfileDataCompletedPage),
    AutoRoute(page: RegisterAddFaceIdPage),
    AutoRoute(page: RegisterAddFaceIdCompletedPage),
    AutoRoute(
      page: HomePage,
      children: [
        AutoRoute(
          path: 'dash_board',
          name: 'DashBoardRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: DashBoardPage,
            ),
            AutoRoute(
              path: 'role_management',
              page: RoleManagementPage,
            ),
            AutoRoute(
              path: 'manage_locker_and_equipment_page',
              page: ManageLockerAndEquipmentPage,
            ),
            AutoRoute(
              path: 'streaming_and_record',
              page: StreamingAndRecordPage,
            ),
            AutoRoute(path: 'fixing', page: FixingPage),
            AutoRoute(path: 'report_problem', page: ReportProblemPage),
          ],
        ),
        AutoRoute(
          path: 'history',
          name: 'HistoryRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: HistoryPage,
            ),
          ],
        ),
        AutoRoute(
          path: 'notification',
          name: 'NotificationRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: NotificationPage,
            ),
          ],
        ),
        AutoRoute(
          path: 'unlock_locker',
          name: 'UnlockLockerRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: UnlockLockerPage,
            ),
            AutoRoute(path: 'list_locker', page: ListLockerPage),
            AutoRoute(path: ':lockerId', page: ToggleLockerPage),
          ],
        ),
        AutoRoute(
          path: 'account',
          name: 'AccountRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: AccountPage,
            ),
          ],
        ),
      ],
    ),
    AutoRoute(page: AddUserPage),
    AutoRoute(page: ApproveUserPage),
    AutoRoute(page: DepartmentManagementPage),
    AutoRoute(page: DepartmentDetailPage),
    AutoRoute(page: AddAccountPage),
    AutoRoute(page: AllAccountPage),
    AutoRoute(page: AccountDetailPage),
    AutoRoute(page: EditAccountPage),
    AutoRoute(page: BlockAccountPage),
    AutoRoute(page: AllLockerPage),
    AutoRoute(page: QrScanningPage),
    AutoRoute(page: AddOrEditLockerPage),
    AutoRoute(page: AllEquipmentPage),
    AutoRoute(page: AddingEquipment),
    AutoRoute(page: AddEquipmentPage),
    AutoRoute(page: MacAddressHelpPage),
    AutoRoute(page: AllLocationPage),
    AutoRoute(page: AddLocationPage),
    AutoRoute(page: AllCategoryPage),
    AutoRoute(page: AddCategoryPage),
    AutoRoute(page: CategoryDetailPage),
    AutoRoute(page: EquipmentDetailPage),
    AutoRoute(page: RequestFixingDetailPage),
    AutoRoute(page: LockerDetailPage),
    AutoRoute(page: ManagePermissionPage),
    AutoRoute(page: AddPermanentPermissionPage),
    AutoRoute(page: AddTemporaryPermissionPage),
    AutoRoute(page: ChangePermissionTypePage),
    AutoRoute(page: AllCameraPage),
    AutoRoute(page: LiveCameraPage),
    AutoRoute(page: RecordVideoPage),
    AutoRoute(page: FixingLockerDetailPage),
    AutoRoute(page: FixingDetailPage),
    AutoRoute(page: ReportProblemLockerDetailPage),
    AutoRoute(page: ReportProblemDetailPage),
    AutoRoute(page: SolveProblemPage),
  ],
)
class $AppRouter {}
