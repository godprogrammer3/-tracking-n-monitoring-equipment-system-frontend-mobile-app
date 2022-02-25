import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/button_outline_widget.dart';
import 'package:frontend/core/presentation/widgets/input_text.dart';

class DepartmentFilterWidget extends HookWidget {
  final List<Map<String, dynamic>> listChoices;

  const DepartmentFilterWidget({required this.listChoices});
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
            ListTile(
              leading: Icon(
                Icons.check_box_rounded,
                color: Theme.of(context).colorScheme.secondary,
              ),
              title: const Text('ทั้งหมด'),
            ),
            const Divider(),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: screenSize.height * 0.6),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: List<Widget>.generate(listChoices.length, (index) {
                    return ListTile(
                      leading: Icon(
                        Icons.check_box_rounded,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      title: Text(listChoices[index]['displayText'] as String),
                      onTap: () {},
                    );
                  }),
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
}
