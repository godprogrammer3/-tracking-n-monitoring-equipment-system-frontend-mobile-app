import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/date_time_picker.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/confirm_change_permission_type_popup.dart';

class ChangePermissionTypePage extends HookWidget {
  final bool isPermanentType;
  const ChangePermissionTypePage({Key? key, this.isPermanentType = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          isPermanentType
              ? 'เปลี่ยนเป็นสิทธิ์ชั่วคราว'
              : 'เปลี่ยนเป็นสิทธิ์ถาวร',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('แผนกบริหาร'),
                        Text(
                          'สิทธิถาวร',
                          style: Theme.of(context).primaryTextTheme.caption,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            if (isPermanentType) _buildForPermanentType(context),
            const Spacer(),
            SizedBox(
              width: 400,
              child: Button(
                'บันทึกการเปลี่ยนแปลง',
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => ConfirmChangePermissionTypePopup(
                      isPermanentType: isPermanentType,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildForPermanentType(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Image.asset(
              'assets/icons/manage_locker_and_equipment/clock_icon_medium.png',
              width: 30,
              height: 30,
              fit: BoxFit.fill,
            ),
            const Text('ระยะเวลาในการใช้งาน')
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                'กำหนดระยะเวลาสิทธิสำหรับแผนกหรือบัญชีผู้ใช้ที่สามารถใช้งานตู้ล็อกเกอร์ได้',
                style: Theme.of(context).primaryTextTheme.caption,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            DateTimePicker(
              label: 'วันที่เริ่ม',
              placeHolder: 'วันที่เริ่ม',
              onChanged: (value) {},
            ),
            const SizedBox(
              width: 10,
            ),
            DateTimePicker(
              label: 'วันที่สิ้นสุด',
              placeHolder: 'วันที่สิ้นสุด',
              onChanged: (value) {},
            ),
          ],
        ),
      ],
    );
  }
}
