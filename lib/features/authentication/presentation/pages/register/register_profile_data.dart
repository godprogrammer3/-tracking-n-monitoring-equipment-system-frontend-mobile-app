import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/button.dart';

class RegisterProfileDataPage extends StatelessWidget {
  const RegisterProfileDataPage({Key? key}) : super(key: key);

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
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: const Offset(0, 8), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'เพิ่มข้อมูลส่วนตัวของคุณ',
                          style: Theme.of(context).primaryTextTheme.bodyText1,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.check_circle_outline,
                          color: Color.fromRGBO(60, 60, 67, 0.6),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'รูปภาพโปรไฟล์ เพศ และวันเกิด',
                          style: Theme.of(context)
                              .primaryTextTheme
                              .bodyText1
                              ?.copyWith(
                                color: const Color.fromRGBO(60, 60, 67, 0.6),
                              ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.check_circle_outline,
                          color: Color.fromRGBO(60, 60, 67, 0.6),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'ถ่ายรูปหน้าตรงสำหรับ Face ID',
                          style: Theme.of(context)
                              .primaryTextTheme
                              .bodyText1
                              ?.copyWith(
                                color: const Color.fromRGBO(60, 60, 67, 0.6),
                              ),
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
                          'เพิ่มข้อมูลส่วนตัว',
                          onPressed: () {
                            AutoRouter.of(context)
                                .push(const RegisterProfileDataFormRoute());
                          },
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          child: Text(
                            'ไม่ใช่ตอนนี้',
                            style: Theme.of(context)
                                .primaryTextTheme
                                .caption
                                ?.copyWith(
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
            ],
          ),
        ),
      ),
    );
  }
}
