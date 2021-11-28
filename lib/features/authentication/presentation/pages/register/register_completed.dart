import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/button.dart';

class RegisterCompletedPage extends StatelessWidget {
  const RegisterCompletedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
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
                      'assets/images/authentication_feature/register_completed.png',
                      height: 150,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'สมัครสมาชิก ',
                    style: Theme.of(context).primaryTextTheme.headline1,
                  ),
                  Text(
                    'สำเร็จ',
                    style: Theme.of(context)
                        .primaryTextTheme
                        .headline1
                        ?.copyWith(color: const Color.fromRGBO(0, 147, 120, 1)),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'บัญชีของคุณยัง',
                    style: Theme.of(context).primaryTextTheme.bodyText1,
                  ),
                  Text(
                    ' ไม่ได้รับการอนุมัติ ',
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyText1
                        ?.copyWith(
                            color: const Color.fromRGBO(244, 186, 36, 1)),
                  ),
                  Text(
                    'จากผู้ดูแลระบบ',
                    style: Theme.of(context).primaryTextTheme.bodyText1,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'กรุณารอการอนุมัติบัญชีของคุณจากผู้ดูแลระบบ',
                    style: Theme.of(context).primaryTextTheme.caption,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Button(
                    'กลับไปยังหน้าหลัก',
                    onPressed: () {
                      AutoRouter.of(context).popUntilRoot();
                      AutoRouter.of(context)
                          .push(const RegisterProfileDataRoute());
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
