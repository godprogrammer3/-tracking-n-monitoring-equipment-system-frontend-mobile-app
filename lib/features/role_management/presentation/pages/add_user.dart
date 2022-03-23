import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/widgets/bottom_sheet_single_select.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/input_text.dart';
import 'package:frontend/features/role_management/presentation/widgets/add_user_popup_confirm.dart';

class AddUserPage extends StatelessWidget {
  const AddUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'เพิ่มผู้ใช้งาน',
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
                Text(
                  'กรอก',
                  style: Theme.of(context).primaryTextTheme.headline1,
                ),
                Text(
                  ' Email ',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor, fontSize: 25),
                ),
                Text(
                  'ผู้ใช้งานของคุณ',
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
                  'ผู้ใช้งานจะได้รับสิทธิของ ตำแหน่งและแผนกตามที่คุณระบุ',
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
                BottomSheetSingleSelect(
                  label: 'ตำแหน่ง',
                  placeHolder: 'ตำแหน่ง',
                  onChanged: (_) {},
                  listChoice: const [
                    {'displayText': 'Super admin', 'value': 1},
                    {'displayText': 'Admin', 'value': 2},
                    {'displayText': 'Master maintainer', 'value': 3},
                    {'displayText': 'Maintainer', 'value': 4},
                    {'displayText': 'User', 'value': 5},
                  ],
                ),
                const SizedBox(
                  width: 5,
                ),
                BottomSheetSingleSelect(
                  label: 'แผนก',
                  placeHolder: 'แผนก',
                  onChanged: (_) {},
                  listChoice: const [
                    {'displayText': 'แผนกบริหาร', 'value': 1},
                    {'displayText': 'แผนกบุคคล', 'value': 2},
                    {'displayText': 'แผนกจัดซื้อ', 'value': 3},
                    {'displayText': 'แผนกบัญชี', 'value': 4},
                    {'displayText': 'แผนกบัญชี', 'value': 5},
                    {'displayText': 'แผนกขาย', 'value': 6},
                    {'displayText': 'แผนกการตลาด', 'value': 7},
                    {'displayText': 'แผนกประชาสัมพันธ์    ', 'value': 8},
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InputText(
                  label: 'Email',
                  placeHolder: 'Email',
                  onChanged: (_) => _,
                  keyboardType: TextInputType.emailAddress,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('+ เพิ่มผู้ใช้งาน'),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(
                  'ถัดไป',
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => const AddUserConfirmPopup(),
                    );
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
