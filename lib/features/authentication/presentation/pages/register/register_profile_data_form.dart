import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/bottom_sheet_single_select_with_icons.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/date_time_picker.dart';
import 'package:frontend/core/presentation/widgets/image_picker_widget.dart';

class RegisterProfileDataFormPage extends StatelessWidget {
  const RegisterProfileDataFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'เพิ่มข้อมูลส่วนตัว',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          screenSize.width * 0.1,
          screenSize.height * 0.05,
          screenSize.width * 0.1,
          0,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImagePickerWidget(
                  onChanged: (value) {
                    print(value);
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                BottomSheetSingleSelectWithIcons(
                  label: 'เพศ',
                  placeHolder: 'เพศ',
                  listChoice: const [
                    {
                      'displayText': 'เพศหญิง',
                      'value': 1,
                      'icon': Icons.female
                    },
                    {'displayText': 'เพศชาย', 'value': 2, 'icon': Icons.male},
                    {
                      'displayText': 'อื่น ๆ',
                      'value': 3,
                      'icon': Icons.transgender
                    }
                  ],
                  onChanged: (value) {
                    print(value);
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                DateTimePicker(
                  label: 'วันเกิด',
                  placeHolder: 'วันเกิด',
                  onChanged: (value) {
                    print(value);
                  },
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(
                  'ถัดไป',
                  onPressed: () {
                    AutoRouter.of(context)
                        .push(const RegisterProfileDataCompletedRoute());
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: Text(
                    'ข้ามขั้นตอนนี้',
                    style: Theme.of(context).primaryTextTheme.caption?.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                  ),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
