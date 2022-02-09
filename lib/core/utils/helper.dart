import 'enum.dart';

String roleToString(Role role) {
  if (role == Role.superAdmin) {
    return 'Super admin';
  } else if (role == Role.admin) {
    return 'Admin';
  } else if (role == Role.masterMaintainer) {
    return 'Master maintaner';
  } else if (role == Role.maintainer) {
    return 'Maintainer';
  } else {
    return 'User';
  }
}
