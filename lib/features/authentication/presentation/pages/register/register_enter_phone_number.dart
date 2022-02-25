import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/input_text.dart';

class RegisterEnterPhoneNumberPage extends StatelessWidget {
  const RegisterEnterPhoneNumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Phone number',
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
                    'assets/images/authentication_feature/register_phone.png',
                    height: 100,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Enter your ',
                  style: Theme.of(context).primaryTextTheme.headline1,
                ),
                Text(
                  'phone number',
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
                  'กรอกเบอร์โทรศัพท์ที่ใช้จริง',
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
                  label: 'เบอร์โทรศัพท์',
                  placeHolder: 'เบอร์โทรศัพท์',
                  onChanged: (_) => _,
                  keyboardType: TextInputType.number,
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
                  'ถัดไป',
                  onPressed: () {
                    AutoRouter.of(context).push(const RegisterEnterOTPRoute());
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
