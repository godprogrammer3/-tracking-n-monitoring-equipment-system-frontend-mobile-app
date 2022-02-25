import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/bottom_sheet_multiple_select.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/date_time_picker.dart';
import 'package:frontend/core/presentation/widgets/multiple_select_custom_widget.dart';

class AddTemporaryPermissionPage extends HookWidget {
  const AddTemporaryPermissionPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'เพิ่มสิทธิชั่วคราว',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                children: [
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
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/manage_locker_and_equipment/account_group_icon_secondary_color.png',
                        width: 30,
                        height: 30,
                        fit: BoxFit.fill,
                      ),
                      const Text('จัดการสิทธิการใช้งาน')
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'เลือกแผนกและผู้ใช้งาน เพื่อเพิ่มสิทธิการใช้งานตู้ล็อกเกอร์',
                        style: Theme.of(context).primaryTextTheme.caption,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      BottomSheetMultipleSelect(
                        label: 'แผนก',
                        placeHolder: 'แผนก',
                        onChanged: (value) {
                          print(value);
                        },
                        listChoice: const [
                          {
                            'displayText': 'แผนก 1',
                            'value': 1,
                            'isSelected': false,
                          },
                          {
                            'displayText': 'แผนก 2',
                            'value': 2,
                            'isSelected': false,
                          },
                          {
                            'displayText': 'แผนก 3',
                            'value': 3,
                            'isSelected': false,
                          },
                          {
                            'displayText': 'แผนก 4',
                            'value': 4,
                            'isSelected': false,
                          },
                          {
                            'displayText': 'แผนก 5',
                            'value': 5,
                            'isSelected': false,
                          },
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      MultipleSelectCustomWidget(
                        listValue: null,
                        label: 'บัญชีผู้ใช้ (ถ้ามี)',
                        placeHolder: 'บัญชีผู้ใช้ (ถ้ามี)',
                        onTap: () async {
                          return await AutoRouter.of(context)
                              .push(const AddAccountRoute()) as List<String>?;
                        },
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 300,
                    child: Button(
                      'บันทึก',
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
