import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/widgets/account_card_widget.dart';
import 'package:frontend/core/utils/enum.dart';

class LockerDetailPage extends HookWidget {
  const LockerDetailPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'รายละเอียด',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'ชื่อตู้ล็อกเกอร์ :',
                    style: Theme.of(context).primaryTextTheme.caption,
                  ),
                ),
                const Expanded(
                  flex: 4,
                  child: Text(
                    'เครื่องมือช่าง',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'รายละเอียด :',
                    style: Theme.of(context).primaryTextTheme.caption,
                  ),
                ),
                const Expanded(
                  flex: 4,
                  child: Text(
                    'สำหรับเก็บเครื่องมือช่างเท่านั้น',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Locker ID :',
                    style: Theme.of(context).primaryTextTheme.caption,
                  ),
                ),
                const Expanded(
                  flex: 4,
                  child: Text(
                    '1111111',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'จำนวน :',
                    style: Theme.of(context).primaryTextTheme.caption,
                  ),
                ),
                const Expanded(
                  flex: 4,
                  child: Text(
                    '8 อุปกรณ์',
                  ),
                ),
              ],
            ),
            const Divider(),
            Row(
              children: [
                Image.asset(
                  'assets/icons/manage_locker_and_equipment/location_icon_medium.png',
                  fit: BoxFit.fill,
                  width: 18,
                  height: 18,
                ),
                const Text(
                  'สถานที่ตั้ง',
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'อาคาร :',
                    style: Theme.of(context).primaryTextTheme.caption,
                  ),
                ),
                const Expanded(
                  flex: 4,
                  child: Text(
                    'Headquarters',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'ชั้น :',
                    style: Theme.of(context).primaryTextTheme.caption,
                  ),
                ),
                const Expanded(
                  flex: 4,
                  child: Text(
                    '5',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'ห้อง :',
                    style: Theme.of(context).primaryTextTheme.caption,
                  ),
                ),
                const Expanded(
                  flex: 4,
                  child: Text(
                    '504',
                  ),
                ),
              ],
            ),
            const Divider(),
            Row(
              children: [
                Text(
                  'การแก้ไขล่าสุด',
                  style: Theme.of(context).primaryTextTheme.caption,
                ),
              ],
            ),
            Row(
              children: [
                AccountCardWidget(
                  imagePath: 'assets/images/account/profile_image_example.png',
                  name: 'Bessie Cooper',
                  role: Role.superAdmin,
                  department: 'แผนกบริหาร',
                  bottomWidget: Text(
                    '9 ก.ย. 2021 - 09:21',
                    style: Theme.of(context).primaryTextTheme.caption,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'สร้างโดย',
                  style: Theme.of(context).primaryTextTheme.caption,
                ),
              ],
            ),
            Row(
              children: [
                AccountCardWidget(
                  imagePath: 'assets/images/account/profile_image_example.png',
                  name: 'Darlene Robertson',
                  role: Role.superAdmin,
                  department: 'แผนกบริหาร',
                  bottomWidget: Text(
                    '9 ก.ย. 2021 - 09:21',
                    style: Theme.of(context).primaryTextTheme.caption,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
