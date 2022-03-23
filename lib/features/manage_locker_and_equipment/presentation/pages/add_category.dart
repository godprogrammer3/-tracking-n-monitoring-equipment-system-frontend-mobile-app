import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/bottom_sheet_number_picker.dart';
import 'package:frontend/core/presentation/widgets/bottom_sheet_single_select.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/input_text.dart';
import 'package:frontend/features/role_management/presentation/widgets/add_user_popup_confirm.dart';
import 'package:searchfield/searchfield.dart';

class AddCategoryPage extends StatelessWidget {
  const AddCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'เพิ่มหมวดหมู่',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      resizeToAvoidBottomInset: false,
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
                Text(
                  'กรอก',
                  style: Theme.of(context).primaryTextTheme.headline1,
                ),
                Text(
                  ' หมวดหมู่ ',
                  style: Theme.of(context)
                      .primaryTextTheme
                      .headline1!
                      .copyWith(color: Theme.of(context).colorScheme.secondary),
                ),
                Text(
                  'ของอุปกรณ์',
                  style: Theme.of(context).primaryTextTheme.headline1,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ควรให้อุปกรณ์ที่มีคุณลักษณะเหมือนหรือคล้ายกัน',
                  style: Theme.of(context).primaryTextTheme.caption,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'เป็นหมวดหมู่เดียวกัน ซึ่งจะมีระยะเวลาการยืมเท่ากัน',
                  style: Theme.of(context).primaryTextTheme.caption,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InputText(
                  label: 'ชื่อหมวดหมู่',
                  placeHolder: 'ชื่อหมวดหมู่',
                  onChanged: (value) {},
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BottomSheetNumberPicker(
                  label: 'ระยะเวลาการยืม',
                  placeHolder: 'ระยะเวลาการยืม',
                  onChanged: (value) {},
                  min: 1,
                  max: 9,
                )
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Button(
                    'บันทึก',
                    onPressed: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
