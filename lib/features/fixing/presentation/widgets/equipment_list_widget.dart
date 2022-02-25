import 'package:flutter/material.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/equipment_display_widget.dart';

class EquipmentListWidget extends StatelessWidget {
  const EquipmentListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: EquipmentDisplayWidget(
                        id: 1,
                        imagePath:
                            'assets/images/manage_locker_and_equipment/hammer_image.png',
                      ),
                    ),
                  )
                ],
              ),
              const Divider(),
              Row(
                children: [
                  const Text('สีค้อนถลอกครับ มันดูไม่สวยงามและไม่น่าใช้งาน...'),
                  Text(
                    '3 แจ้งซ่อม',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
