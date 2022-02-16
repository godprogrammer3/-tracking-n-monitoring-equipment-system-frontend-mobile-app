import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/features/role_management/presentation/widgets/edit_dapartment_widget.dart';

class AccountDetailPage extends StatelessWidget {
  const AccountDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          actions: [
            PopupMenuButton(
              onSelected: (value) {
                if (value == 1) {
                  AutoRouter.of(context).push(const EditAccountRoute());
                }
              },
              icon: const Icon(Icons.more_vert),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "แก้ไขข้อมูล",
                      style: Theme.of(context).primaryTextTheme.bodyText1,
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "บล็อกผู้ใช้งาน",
                      style: Theme.of(context).primaryTextTheme.bodyText1,
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "ลบบัญชีผู้ใช้งาน",
                      style: Theme.of(context)
                          .primaryTextTheme
                          .bodyText1!
                          .copyWith(
                            color: Theme.of(context).colorScheme.error,
                          ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(
              screenSize.width * 0.05,
              screenSize.height * 0.025,
              screenSize.width * 0.05,
              screenSize.height * 0.05),
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Card(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Darlene Robertson',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .headline1,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Image.asset(
                                  'assets/icons/role_management/super_admin_icon.png',
                                  width: 40,
                                  height: 40,
                                ),
                              ],
                            ),
                            Text(
                              'Super admin | แผนกบริหาร',
                              style:
                                  Theme.of(context).primaryTextTheme.bodyText1,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: Image.asset(
                        'assets/images/account/profile_image_example.png',
                        fit: BoxFit.fill,
                      ).image,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      leading: Image.asset(
                        'assets/icons/role_management/role_icon.png',
                        width: 50,
                        height: 50,
                      ),
                      title: const Text('แผนกบริหาร'),
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/icons/role_management/gender_icon.png',
                        width: 50,
                        height: 50,
                      ),
                      title: const Text('เพศหญิง'),
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/icons/role_management/calendar_icon.png',
                        width: 50,
                        height: 50,
                      ),
                      title: const Text('15 ต.ค. 1999'),
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/icons/role_management/telephone_icon.png',
                        width: 50,
                        height: 50,
                      ),
                      title: const Text('094-904-3542'),
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/icons/role_management/email_icon.png',
                        width: 50,
                        height: 50,
                      ),
                      title: const Text('kenzi.lawson@example.com'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
