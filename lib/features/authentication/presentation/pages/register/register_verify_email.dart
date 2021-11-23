import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/button.dart';

class RegisterVerifyEmailPage extends StatelessWidget {
  const RegisterVerifyEmailPage({Key? key}) : super(key: key);

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
                children: [
                  Text(
                    'สมัครสมาชิกใกล้เสร็จแล้ว!',
                    style: Theme.of(context).primaryTextTheme.headline1,
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'ยืนยัน Email ของคุณ ระบบได้ส่งลิงก์ยืนยันไปที่',
                      style: Theme.of(context).primaryTextTheme.bodyText1,
                      overflow: TextOverflow.clip,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    'aomsaitan15@gmail.com',
                    style: Theme.of(context)
                        .primaryTextTheme
                        .headline2
                        ?.copyWith(color: Theme.of(context).primaryColor),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/images/authentication_feature/register_email.png',
                      height: 150,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'กรุณากลับมาที่ Toollo เพื่อเริ่มต้นใช้งาน',
                    style: Theme.of(context).primaryTextTheme.caption,
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
                          .push(const RegisterCompletedRoute());
                    },
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ไม่ได้รับ Email ใช่หรือไม่?',
                    style: Theme.of(context).primaryTextTheme.caption,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'ส่งลิงค์ยืนยันอีกครั้ง',
                      style: Theme.of(context)
                          .primaryTextTheme
                          .caption
                          ?.copyWith(color: Theme.of(context).primaryColor),
                    ),
                  ),
                  Text(
                    ' หรือ ',
                    style: Theme.of(context).primaryTextTheme.caption,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'เปลี่ยน Email',
                      style: Theme.of(context)
                          .primaryTextTheme
                          .caption
                          ?.copyWith(color: Theme.of(context).primaryColor),
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
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'กลับไปหน้าหลัก',
                      style: Theme.of(context).primaryTextTheme.caption,
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
