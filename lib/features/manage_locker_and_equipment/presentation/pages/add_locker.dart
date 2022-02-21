import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/bottom_sheet_multiple_select.dart';
import 'package:frontend/core/presentation/widgets/bottom_sheet_single_select.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/input_text.dart';
import 'package:frontend/core/presentation/widgets/multiple_select_custom_widget.dart';

class AddLockerPage extends HookWidget {
  const AddLockerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final ValueNotifier<List<String>?> selectedAccount = useState(null);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'เพิ่มตู้ล็อกเกอร์',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: const [
                      InputText(
                        onChanged: print,
                        label: 'ชื่อตู้ล็อกเกอร์',
                        placeHolder: 'ชื่อตู้ล็อกเกอร์',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      InputText(
                        onChanged: print,
                        label: 'คำอธิบาย',
                        placeHolder: 'คำอธิบาย',
                      ),
                    ],
                  )
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
                        'assets/icons/manage_locker_and_equipment/location_icon_medium.png',
                        fit: BoxFit.fill,
                        width: 30,
                        height: 30,
                      ),
                      const Text('สถานที่ตั้ง'),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          '+ เพิ่มสถานที่',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      BottomSheetSingleSelect(
                        label: 'อาคาร',
                        placeHolder: 'อาคาร',
                        onChanged: (_) {},
                        listChoice: const [
                          {'displayText': 'อาคาร 1', 'value': 1},
                          {'displayText': 'อาคาร 2', 'value': 2},
                          {'displayText': 'อาคาร 3', 'value': 3},
                          {'displayText': 'อาคาร 4', 'value': 4},
                          {'displayText': 'อาคาร 5', 'value': 5},
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      BottomSheetSingleSelect(
                        label: 'ชั้น',
                        placeHolder: 'ชั้น',
                        onChanged: (_) {},
                        listChoice: const [
                          {'displayText': 'ชั้น 1', 'value': 1},
                          {'displayText': 'ชั้น 2', 'value': 2},
                          {'displayText': 'ชั้น 3', 'value': 3},
                          {'displayText': 'ชั้น 4', 'value': 4},
                          {'displayText': 'ชั้น 5', 'value': 5},
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      BottomSheetSingleSelect(
                        label: 'ห้อง',
                        placeHolder: 'ห้อง',
                        onChanged: (_) {},
                        listChoice: const [
                          {'displayText': 'ห้อง 1', 'value': 1},
                          {'displayText': 'ห้อง 2', 'value': 2},
                          {'displayText': 'ห้อง 3', 'value': 3},
                          {'displayText': 'ห้อง 4', 'value': 4},
                          {'displayText': 'ห้อง 5', 'value': 5},
                        ],
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
                      'ถัดไป',
                      onPressed: () {
                        AutoRouter.of(context).push(AllEquipmentRoute());
                      },
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
