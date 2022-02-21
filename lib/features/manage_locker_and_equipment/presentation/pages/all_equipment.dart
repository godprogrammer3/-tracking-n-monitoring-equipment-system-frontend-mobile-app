import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/bottom_sheet_single_select_with_add_choice.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/input_text.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/list_equipment_widget.dart';
import 'package:frontend/features/role_management/presentation/widgets/add_user_popup_confirm.dart';

class AllEquipmentPage extends StatelessWidget {
  final bool isHasEquipment;
  const AllEquipmentPage({Key? key, this.isHasEquipment = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'เครื่องมือช่าง',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          screenSize.width * 0.1,
          screenSize.height * 0.01,
          screenSize.width * 0.1,
          0,
        ),
        child: isHasEquipment
            ? _buildFoundCase(context)
            : _buildNotFoundCase(context),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(10),
        child: Button(
          'เพิ่มอุปกรณ์',
          onPressed: () {
            AutoRouter.of(context).push(const AddingEquipment());
          },
        ),
      ),
    );
  }

  Widget _buildNotFoundCase(BuildContext context) {
    return Center(
      child: Text(
        'ไม่พบอุปกรณ์ในตู้นี้',
        style: Theme.of(context).primaryTextTheme.caption,
      ),
    );
  }

  Widget _buildFoundCase(BuildContext context) {
    return const ListEquipmentWidget();
  }
}
