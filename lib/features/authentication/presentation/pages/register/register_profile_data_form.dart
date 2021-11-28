import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/bottom_sheet_single_select_with_icons.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

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
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade700),
                        shape: BoxShape.circle,
                      ),
                      height: 100,
                      width: 100,
                      child: Center(
                        child: Image.asset(
                          'assets/images/authentication_feature/register_account.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: const [
                            BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 2,
                              color: Color.fromRGBO(60, 60, 67, 0.4),
                            )
                          ],
                        ),
                        child: const Center(
                          child: Icon(Icons.camera_alt_outlined),
                        ),
                      ),
                    ),
                  ],
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
                  placeHolder: 'เลือกเพศ',
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
                Button(
                  'date picker',
                  onPressed: () async {
                    final result = await showDatePicker(
                      context: context,
                      firstDate: DateTime(1950),
                      initialDate: DateTime.now(),
                      lastDate: DateTime.now(),
                    );
                    print(result);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
