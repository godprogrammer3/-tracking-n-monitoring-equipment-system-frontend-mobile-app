import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/utils/enum.dart';

class RequestFixingDetailPage extends HookWidget {
  const RequestFixingDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'รายละเอียดคำขอแจ้งซ่อม',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: Image.asset(
                        'assets/images/account/profile_image_example.png',
                      ).image,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Bessie Cooper',
                          style: Theme.of(context).primaryTextTheme.headline3,
                        ),
                        const SizedBox(width: 10),
                        renderRoleIcon(Role.superAdmin),
                      ],
                    ),
                    Text(
                      'Super admin | แผนกบริหาร',
                      style: Theme.of(context).primaryTextTheme.caption,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('วันที่แจ้งซ่อม: 2 ต.ค. 2021 - 09:21'),
            const SizedBox(
              height: 20,
            ),
            const Flexible(
                child: Text(
                    'สีค้อนถลอกครับ มันดูไม่สวยงามและไม่น่าใช้งานรบกวนนำไป ทาสีใหม่หน่อยได้ไหมครับ ขอบคุณมาก ๆ ครับบ'))
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
