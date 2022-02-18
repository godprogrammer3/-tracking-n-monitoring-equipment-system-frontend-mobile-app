import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/bottom_sheet_number_picker.dart';
import 'package:frontend/core/presentation/widgets/bottom_sheet_single_select.dart';
import 'package:frontend/core/presentation/widgets/bottom_sheet_single_select_with_add_choice.dart';
import 'package:frontend/core/presentation/widgets/equipment_display_widget.dart';
import 'package:frontend/core/presentation/widgets/input_text.dart';
import 'package:frontend/core/utils/enum.dart';

class EquipmentDisplayWidget extends StatelessWidget {
  final int id;
  final String imagePath;
  const EquipmentDisplayWidget({
    Key? key,
    required this.id,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: [
              EquipmentImageDisplayWidget(
                  status: EquipmentStatus.late,
                  imagePath: imagePath,
                  size: const Size(104, 104))
            ],
          ),
        ),
        Expanded(
          flex: 4,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'สว่านไฟฟ้าสีฟ้า',
                    style: Theme.of(context).primaryTextTheme.headline3,
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/manage_locker_and_equipment/category_icon_medium.png',
                    fit: BoxFit.fill,
                    width: 16,
                    height: 16,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'สว่านไฟฟ้า',
                    style: Theme.of(context).primaryTextTheme.headline3,
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/manage_locker_and_equipment/clock_icon_small.png',
                    fit: BoxFit.fill,
                    width: 16,
                    height: 16,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '7 วัน',
                    style: Theme.of(context).primaryTextTheme.headline3,
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/manage_locker_and_equipment/tag_icon_small.png',
                    fit: BoxFit.fill,
                    width: 16,
                    height: 16,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'C1-11-FE-FF-FF-FF',
                    style: Theme.of(context).primaryTextTheme.headline3,
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
