import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/utils/enum.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/equipment_display_widget.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/equipment_info_widget.dart';
import 'package:frontend/features/report_problem/presentation/pages/solve_problem.dart';

class ReportProblemDetailPage extends StatelessWidget {
  const ReportProblemDetailPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'รายละเอียดการแจ้งปัญหา',
          style: Theme.of(context).primaryTextTheme.headline1,
        ),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.info_outline,
              color: Colors.black,
            ),
            onPressed: () {
              showModalBottomSheet<dynamic>(
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return const EquipmentInfoWidget();
                },
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          screenSize.width * 0.05,
          20,
          screenSize.width * 0.05,
          20,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Expanded(
                  child: Card(
                    child: EquipmentDisplayWidget(
                      id: 1,
                      imagePath:
                          'assets/images/manage_locker_and_equipment/hammer_image.png',
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 24,
                              backgroundImage: Image.asset(
                                'assets/images/account/profile_image_example.png',
                              ).image,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Bessie Cooper',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .headline3,
                                ),
                                const SizedBox(width: 10),
                                renderRoleIcon(Role.superAdmin),
                              ],
                            ),
                            Row(
                              children: const [
                                Expanded(
                                  child: Text(
                                    'คืนอุปกรณ์ไปตั้งแต่วันที่ 27 แล้วแต่พึ่งมาดูในแอปยังขึ้นสถานะว่ายืมอยู่ ตอนนี้ค้อนอยู่ในตู้เรียบร้อยแล้วครับ ไปเช็คดูได้',
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Button(
                  'จัดการปัญหา',
                  onPressed: () {
                    AutoRouter.of(context).push(const SolveProblemRoute());
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            )
          ],
        ),
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
