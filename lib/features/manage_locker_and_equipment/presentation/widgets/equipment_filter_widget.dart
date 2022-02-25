import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/button_outline_widget.dart';
import 'package:frontend/core/presentation/widgets/input_text.dart';

class EquipmentFilterWidget extends HookWidget {
  final Map<String, dynamic> listChoices;

  const EquipmentFilterWidget({required this.listChoices});
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:
          BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.9),
      child: Container(
        color: const Color(0xFF737373),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).canvasColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
          child: _buildBody(context),
        ),
      ),
    );
  }

  Widget _buildBody(
    BuildContext context,
  ) {
    final screenSize = MediaQuery.of(context).size;
    return StatefulBuilder(
      builder: (BuildContext context, void Function(void Function()) setState) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  width: 40,
                  height: 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromRGBO(224, 224, 224, 1),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ตัวกรอง',
                  style: Theme.of(context).primaryTextTheme.headline2,
                ),
              ],
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: screenSize.height * 0.7),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if ((listChoices['equipmentType'] as List?) != null)
                        _buildEquipmentTypeFilter(context),
                      if ((listChoices['equipmentStatus'] as List?) != null)
                        _buildEquipmentStatusFilter(context),
                      if ((listChoices['department'] as List?) != null)
                        _buildDepartmentFilter(context),
                      if ((listChoices['lockers'] as List?) != null)
                        _buildLockersFilter(context),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 20,
                ),
                ButtonOutlineWidget('ล้างค่า', onPressed: () {}),
                const SizedBox(
                  width: 20,
                ),
                Button(
                  'ค้นหา',
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        );
      },
    );
  }

  Widget _buildEquipmentTypeFilter(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'ชนิดอุปกรณ์',
              style: Theme.of(context).primaryTextTheme.headline2,
            ),
          ],
        ),
        Wrap(
          children: List<Widget>.generate(
              (listChoices['equipmentType'] as List).length, (index) {
            return FilterChip(
              label: Text(
                listChoices['equipmentType'][index]['displayText'] as String,
              ),
              onSelected: (value) {},
            );
          }),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget _buildEquipmentStatusFilter(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'สถานะอุปกรณ์',
              style: Theme.of(context).primaryTextTheme.headline2,
            ),
          ],
        ),
        Wrap(
          children: List<Widget>.generate(
              (listChoices['equipmentStatus'] as List).length, (index) {
            return FilterChip(
              label: Text(
                listChoices['equipmentStatus'][index]['displayText'] as String,
              ),
              onSelected: (value) {},
            );
          }),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget _buildDepartmentFilter(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'แผนก',
              style: Theme.of(context).primaryTextTheme.headline2,
            ),
          ],
        ),
        Wrap(
          children: List<Widget>.generate(
              (listChoices['department'] as List).length, (index) {
            return FilterChip(
              label: Text(
                listChoices['department'][index]['displayText'] as String,
              ),
              onSelected: (value) {},
            );
          }),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget _buildLockersFilter(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'ตู้ล็อกเกอร์',
              style: Theme.of(context).primaryTextTheme.headline2,
            ),
          ],
        ),
        Wrap(
          children: List<Widget>.generate(
              (listChoices['lockers'] as List).length, (index) {
            return FilterChip(
              label: Text(
                listChoices['lockers'][index]['displayText'] as String,
              ),
              onSelected: (value) {},
            );
          }),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
