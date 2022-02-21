import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/utils/enum.dart';
import 'package:frontend/core/utils/helper.dart' as helper;

class AccountCardWidget extends HookWidget {
  final String imagePath;
  final String name;
  final String? email;
  final Role role;
  final String department;
  final Widget? bottomWidget;
  const AccountCardWidget({
    required this.imagePath,
    required this.name,
    required this.role,
    this.email = '',
    required this.department,
    this.bottomWidget,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 27,
            backgroundImage: Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ).image,
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: Theme.of(context).primaryTextTheme.headline2,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    renderRoleIcon(role)
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '${role.toNameString()} | $department',
                      style: Theme.of(context).primaryTextTheme.caption,
                    ),
                  ],
                ),
                if (email != '')
                  Row(
                    children: [
                      Text(
                        email!,
                        style: Theme.of(context).primaryTextTheme.caption,
                      )
                    ],
                  ),
                if (bottomWidget != null)
                  Row(
                    children: [
                      bottomWidget!,
                    ],
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget renderRoleIcon(Role role) {
    if (role == Role.user) {
      return Container();
    }

    String assetPath;
    if (role == Role.superAdmin) {
      assetPath = 'assets/icons/role_management/super_admin_icon.png';
    } else if (role == Role.admin) {
      assetPath = 'assets/icons/role_management/admin_icon.png';
    } else if (role == Role.masterMaintainer) {
      assetPath = 'assets/icons/role_management/master_maintainer_icon.png';
    } else {
      assetPath = 'assets/icons/role_management/maintainer_icon.png';
    }
    return Image.asset(
      assetPath,
      width: 30,
      height: 30,
    );
  }
}
