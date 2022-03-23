import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/widgets/bottom_sheet_single_select.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/button_outline_widget.dart';
import 'package:frontend/core/presentation/widgets/input_text.dart';

class LocationFilterWidget extends HookWidget {
  final List<Map<String, dynamic>> listChoices;

  const LocationFilterWidget({required this.listChoices});
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
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
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
}
