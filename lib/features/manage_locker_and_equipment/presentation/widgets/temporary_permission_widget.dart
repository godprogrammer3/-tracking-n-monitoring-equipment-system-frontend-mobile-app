import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/account_card_widget.dart';
import 'package:frontend/core/utils/enum.dart';

import 'confirm_delete_permission_popup.dart';

class TemporaryPermissionWidget extends HookWidget {
  const TemporaryPermissionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentTab = useState(0);
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TabBar(
                  onTap: (index) {
                    currentTab.value = index;
                  },
                  indicatorColor: Theme.of(context).colorScheme.secondary,
                  isScrollable: true,
                  labelColor: Theme.of(context).colorScheme.secondary,
                  unselectedLabelColor: Colors.grey,
                  tabs: const [
                    Tab(
                      text: 'แผนก',
                    ),
                    Tab(
                      text: 'บัญชีผู้ใช้',
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: currentTab.value == 0
                ? _buildDepartmentTab(context)
                : _buildAccountTab(context),
          )
        ],
      ),
    );
  }

  Widget _buildDepartmentTab(BuildContext context) {
    const departmentList = [
      'แผนกบริหาร',
      'แผนกบุคคล',
      'แผนกจัดซื้อ',
      'แผนกบัญชี',
    ];

    return ListView.builder(
      itemCount: departmentList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(departmentList[index]),
          subtitle: Text(
            'ระยะเวลาสิทธิ: 10 ต.ค. 2021 - 31 ต.ค. 2021',
            style: Theme.of(context).primaryTextTheme.caption,
          ),
          trailing: PopupMenuButton(
            onSelected: (value) {
              if (value == 1) {
                AutoRouter.of(context).push(ChangePermissionTypeRoute());
              } else {
                showDialog(
                  context: context,
                  builder: (context) => const ConfirmDeletePermissionPopup(),
                );
              }
            },
            icon: const Icon(Icons.more_vert),
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text(
                  "เปลี่ยนเป็นสิทธิ์ถาวร",
                  style: Theme.of(context).primaryTextTheme.bodyText1,
                ),
              ),
              PopupMenuItem(
                value: 2,
                child: Text(
                  "ลบสิทธิ์",
                  style: Theme.of(context)
                      .primaryTextTheme
                      .bodyText1!
                      .copyWith(color: Theme.of(context).colorScheme.error),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildAccountTab(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Row(
          children: [
            AccountCardWidget(
              imagePath: 'assets/images/account/profile_image_example.png',
              name: 'Darlene Robertson',
              role: Role.superAdmin,
              department: 'แผนกบริหาร',
              bottomWidget: Text(
                'ระยะเวลาสิทธิ: 10 ต.ค. 2021 - 31 ต.ค. 2021',
                style: Theme.of(context).primaryTextTheme.caption,
              ),
            ),
            PopupMenuButton(
              onSelected: (value) {
                if (value == 1) {
                  AutoRouter.of(context).push(ChangePermissionTypeRoute());
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => const ConfirmDeletePermissionPopup(),
                  );
                }
              },
              icon: const Icon(Icons.more_vert),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text(
                    "เปลี่ยนเป็นสิทธิ์ถาวร",
                    style: Theme.of(context).primaryTextTheme.bodyText1,
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text(
                    "ลบสิทธิ์",
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyText1!
                        .copyWith(color: Theme.of(context).colorScheme.error),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
