import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/input_text.dart';

class RegisterEnterNamePage extends StatelessWidget {
  const RegisterEnterNamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Name',
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
                    'assets/images/authentication_feature/register_id_card.png',
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
                  'name',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor, fontSize: 25),
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
                  'กรอกชื่อจริงและนามสกุลของคุณ',
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
                  label: 'ชื่อจริง',
                  placeHolder: 'ชื่อจริง',
                  onChanged: (_) => _,
                ),
                const SizedBox(
                  width: 5,
                ),
                InputText(
                  label: 'นามสกุล',
                  placeHolder: 'นามสกุล',
                  onChanged: (_) => _,
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
                    AutoRouter.of(context)
                        .push(const RegisterEnterPhoneNumberRoute());
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
