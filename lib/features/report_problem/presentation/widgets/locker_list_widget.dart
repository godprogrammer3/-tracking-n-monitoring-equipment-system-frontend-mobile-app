import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/locker_display_widget.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/equipment_display_widget.dart';

class LockerListWidget extends StatelessWidget {
  const LockerListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      crossAxisCount: 2,
      children: List<Widget>.generate(10, (index) {
        return InkWell(
          onTap: () {
            AutoRouter.of(context).push(ReportProblemLockerDetailRoute());
          },
          child: LockerDisplayWidget(
            building: 'Headquarters',
            floor: '5',
            id: 1,
            name: 'เครื่องมือช่าง',
            room: '504',
            bottomWidget: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    width: 10,
                    height: 14,
                    child: Image.asset(
                      'assets/icons/account/alert_icon.png',
                      width: 10,
                      height: 14,
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Text(
                    'แจ้งปัญหา 3 อุปกรณ์',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
