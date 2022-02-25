import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/bottom_sheet_single_select_with_icons.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/date_time_picker.dart';
import 'package:frontend/core/presentation/widgets/image_picker_widget.dart';
import 'package:image_picker/image_picker.dart';

class RegisterAddFaceIdPage extends HookWidget {
  const RegisterAddFaceIdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final ValueNotifier<String> imagePath = useState('');
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Email',
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
                Expanded(
                  child: Image.asset(
                    'assets/images/authentication_feature/face_recognition.png',
                    height: 100,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Selfie for',
                  style: Theme.of(context).primaryTextTheme.headline1,
                ),
                Text(
                  'Face ID',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 25,
                  ),
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
                  'ถ่ายรูปใบหน้าของคุณ',
                  style: Theme.of(context).primaryTextTheme.caption,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'เพิ่มใช้แสกนหน้าในการเปิดตู้อุปกรณ์',
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
                InkWell(
                  onTap: () async {
                    final ImagePicker _picker = ImagePicker();
                    final XFile? image =
                        await _picker.pickImage(source: ImageSource.camera);
                    if (image != null) {
                      imagePath.value = image.path;
                    }
                  },
                  child: Expanded(
                    child: imagePath.value != ''
                        ? Image.file(
                            File(imagePath.value),
                            fit: BoxFit.cover,
                            height: 200,
                            width: 300,
                          )
                        : Image.asset(
                            'assets/images/authentication_feature/face_id_placeholder.png',
                            height: 200,
                            width: 300,
                          ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(
                  'เพิ่ม Face ID',
                  onPressed: () async {
                    AutoRouter.of(context)
                        .push(const RegisterAddFaceIdCompletedRoute());
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
