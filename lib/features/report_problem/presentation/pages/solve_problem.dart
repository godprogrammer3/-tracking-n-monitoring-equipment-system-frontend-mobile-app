import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/widgets/bottom_sheet_single_select.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/equipment_display_widget.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/equipment_info_widget.dart';

class SolveProblemPage extends StatelessWidget {
  const SolveProblemPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'จัดการปัญหา',
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      BottomSheetSingleSelect(
                        label: 'สถานะการยืม',
                        placeHolder: 'สถานะอุปกรณ์',
                        onChanged: (value) {},
                        listChoice: const [
                          {
                            'displayText': 'ยืมอยู่',
                            'value': 1,
                          }
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.help_outline,
                          color: Theme.of(context).colorScheme.secondary),
                      Text(
                        'เลือกสถานะอุปกรณ์ให้ตรงกับสถานการณ์จริง',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary),
                      )
                    ],
                  ),
                  Text(
                    'สถานะอุปกรณ์',
                    style: Theme.of(context).primaryTextTheme.caption,
                  ),
                  Text(
                    '1. พร้อมใช้งาน - อุปกรณ์ที่ไม่มีผู้ยืม',
                    style: Theme.of(context).primaryTextTheme.caption,
                  ),
                  Text(
                    '2. ถูกยืม - อุปกรณ์ถูกยืมไปใช้งาน',
                    style: Theme.of(context).primaryTextTheme.caption,
                  ),
                  Text(
                    '3. ส่งซ่อม - อุปกรณ์อยู่ระหว่างการซ่อมแซ่ม',
                    style: Theme.of(context).primaryTextTheme.caption,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Button(
                  'บันทึก',
                  onPressed: () {},
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
}
