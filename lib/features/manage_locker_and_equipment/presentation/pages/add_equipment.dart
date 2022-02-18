import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/widgets/account_card_widget.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/button_outline_widget.dart';
import 'package:frontend/core/presentation/widgets/equipment_display_widget.dart';
import 'package:frontend/core/presentation/widgets/search_box_widget.dart';
import 'package:frontend/core/utils/enum.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/equipment_form_widget.dart';

class AddEquipmentPage extends StatelessWidget {
  const AddEquipmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'เพิ่มอุปกรณ์',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: EquipmentFormWidget(
              id: index,
              imagePath:
                  'assets/images/manage_locker_and_equipment/hammer_image.png',
            ),
          );
        },
      ),
      bottomNavigationBar: SizedBox(
        height: screenSize.height * 0.2,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('ตรวจพบทั้งหมด'),
                  Text(
                    '8 อุปกรณ์',
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                ],
              ),
              const Divider(),
              Row(
                children: [
                  ButtonOutlineWidget('ลองอีกครั้ง', onPressed: () {}),
                  const SizedBox(
                    width: 10,
                  ),
                  const Button(
                    'บันทึก',
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
