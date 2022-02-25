import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/widgets/bottom_sheet_single_select.dart';
import 'package:frontend/core/presentation/widgets/bottom_sheet_single_select_with_icons.dart';
import 'package:frontend/core/presentation/widgets/date_time_picker.dart';
import 'package:frontend/core/presentation/widgets/input_text.dart';

class EditAccountPage extends StatelessWidget {
  const EditAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Darlene Robertson'),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.done),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              screenSize.width * 0.05,
              screenSize.height * 0.025,
              screenSize.width * 0.05,
              screenSize.height * 0.05),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: Image.asset(
                      'assets/images/account/profile_image_example.png',
                      fit: BoxFit.fill,
                    ).image,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'เปลี่ยนรูปโปรไฟล์',
                      style: Theme.of(context)
                          .primaryTextTheme
                          .headline3!
                          .copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  InputText(
                    onChanged: print,
                    label: 'ชื่อ',
                    placeHolder: 'ชื่อ',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InputText(
                    onChanged: print,
                    label: 'นามสกุล',
                    placeHolder: 'นามสกุล',
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  InputText(
                    onChanged: print,
                    label: 'เบอร์โทรศัพท์',
                    placeHolder: 'เบอร์โทรศัพท์',
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  InputText(
                    onChanged: print,
                    label: 'Email',
                    placeHolder: 'Email',
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BottomSheetSingleSelect(
                    label: 'Role',
                    placeHolder: 'Role',
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
                height: 10,
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
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Face ID',
                    style: Theme.of(context).primaryTextTheme.bodyText1,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/account/face_id_image.png',
                    width: 200,
                    height: 200,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'เปลี่ยนรูป Face ID',
                      style: Theme.of(context)
                          .primaryTextTheme
                          .headline3!
                          .copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
