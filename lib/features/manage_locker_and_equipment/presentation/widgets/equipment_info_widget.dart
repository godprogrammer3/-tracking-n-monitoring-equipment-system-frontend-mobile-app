import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/utils/color_constant.dart' as color_constant;

class EquipmentInfoWidget extends HookWidget {
  const EquipmentInfoWidget();
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
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          'ชื่ออุปกรณ์:',
                          style: Theme.of(context).primaryTextTheme.caption,
                        ),
                      ),
                      const Expanded(
                        flex: 4,
                        child: Text(
                          'ค้อน',
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          'หมวดหมู่:',
                          style: Theme.of(context).primaryTextTheme.caption,
                        ),
                      ),
                      const Expanded(
                        flex: 4,
                        child: Text(
                          'ค้อน',
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          'ระยะเวลาการยืม:',
                          style: Theme.of(context).primaryTextTheme.caption,
                        ),
                      ),
                      const Expanded(
                        flex: 4,
                        child: Text(
                          '7 วัน',
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Mac address:',
                          style: Theme.of(context).primaryTextTheme.caption,
                        ),
                      ),
                      const Expanded(
                        flex: 4,
                        child: Text(
                          'C7-11-FE-FF-FF-FF',
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          'สถานะ:',
                          style: Theme.of(context).primaryTextTheme.caption,
                        ),
                      ),
                      const Expanded(
                        flex: 4,
                        child: Text(
                          'พร้อมใช้งาน',
                          style: TextStyle(color: color_constant.success),
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          'แก้ไขล่าสุด:',
                          style: Theme.of(context).primaryTextTheme.caption,
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Bessie Cooper',
                            ),
                            Text(
                              'Supper admin | แผนกบริหาร',
                            ),
                            Text(
                              '20 ก.ย. 2021 - 09:21',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          'สร้างโดย:',
                          style: Theme.of(context).primaryTextTheme.caption,
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Darlene Robertson',
                            ),
                            Text(
                              'Supper admin | แผนกบริหาร',
                            ),
                            Text(
                              '9 ก.ย. 2021 - 09:21',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
