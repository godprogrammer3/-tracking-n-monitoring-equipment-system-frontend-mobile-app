import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/widgets/tabs_widget.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/edit_equipment_widget.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/equipment_history_widget.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/request_fixing_widget.dart';

class EquipmentDetailPage extends HookWidget {
  const EquipmentDetailPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    const tabsBar = ['แก้ไข', 'ประวัติ', 'แจ้งซ่อม'];
    const tabs = [
      EditEquipmentWidget(),
      EquipmentHistoryWidget(),
      RequestFixingWidget()
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'รายละเอียดอุปกรณ์',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: TabsWidget(
          tabsBar: tabsBar,
          tabs: tabs,
        ),
      ),
    );
  }
}
