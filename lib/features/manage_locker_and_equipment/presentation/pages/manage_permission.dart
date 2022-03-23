import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/tabs_widget.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/permanent_permission_widget.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/temporary_permission_widget.dart';

class ManagePermissionPage extends HookWidget {
  const ManagePermissionPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final currentTab = useState(0);
    const tabsBar = [
      'สิทธิ์ถาวร',
      'สิทธิ์ชั่วคราว',
    ];
    const tabs = [
      PermanentPermissionWidget(),
      TemporaryPermissionWidget(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'จัดการสิทธิการใช้งาน',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                if (currentTab.value == 0) {
                  AutoRouter.of(context)
                      .push(const AddPermanentPermissionRoute());
                } else {
                  AutoRouter.of(context)
                      .push(const AddTemporaryPermissionRoute());
                }
              },
              icon: const Icon(Icons.add)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: TabsWidget(
          tabsBar: tabsBar,
          tabs: tabs,
          onTabChanged: (index) => currentTab.value = index,
        ),
      ),
    );
  }
}
