import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/account_card_widget.dart';
import 'package:frontend/core/utils/enum.dart';

class HomeDrawer extends HookWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topRoute = RouteData.of(context).router.topRoute;
    print(topRoute.name);
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    spreadRadius: 0.5,
                    blurRadius: 1,
                  )
                ],
                color: Colors.white,
              ),
              child: const SizedBox(
                width: 300,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: AccountCardWidget(
                    imagePath:
                        'assets/images/account/profile_image_example.png',
                    name: 'Darlene Robertson',
                    role: Role.superAdmin,
                    dapartment: 'แผนกบริหาร',
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(255, 241, 248, 1),
                              Color.fromRGBO(250, 245, 255, 1),
                              Color.fromRGBO(243, 232, 255, 1),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: ListTile(
                          leading: Image.asset(
                            'assets/icons/core/account_group_icon_active.png',
                            width: 50,
                            height: 40,
                            fit: BoxFit.fill,
                          ),
                          title: Text(
                            'การจัดการสิทธิ',
                            style: Theme.of(context)
                                .primaryTextTheme
                                .headline1!
                                .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary),
                          ),
                          onTap: () {
                            if (topRoute.name == 'DashBoardRoute') {
                              AutoRouter.of(context)
                                  .popAndPush(const RoleManagementRoute());
                            } else {
                              AutoRouter.of(context).pop();
                              AutoRouter.of(context)
                                  .popAndPush(const RoleManagementRoute());
                            }
                          },
                        ),
                      ),
                    ),
                    Container(
                      decoration: true
                          ? null
                          : BoxDecoration(
                              gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromRGBO(255, 241, 248, 1),
                                  Color.fromRGBO(250, 245, 255, 1),
                                  Color.fromRGBO(243, 232, 255, 1),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                      child: ListTile(
                        leading: Image.asset(
                          'assets/icons/core/locker_icon_inactive.png',
                          width: 50,
                          height: 40,
                          fit: BoxFit.fill,
                        ),
                        title: Text(
                          'ตู้และอุปกรณ์',
                          style: Theme.of(context).primaryTextTheme.headline1,
                        ),
                      ),
                    ),
                    Container(
                      decoration: true
                          ? null
                          : BoxDecoration(
                              gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromRGBO(255, 241, 248, 1),
                                  Color.fromRGBO(250, 245, 255, 1),
                                  Color.fromRGBO(243, 232, 255, 1),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                      child: ListTile(
                        leading: Image.asset(
                          'assets/icons/core/camera_icon_inactive.png',
                          width: 50,
                          height: 40,
                          fit: BoxFit.fill,
                        ),
                        title: Text(
                          'กล้องและวิดีโอ',
                          style: Theme.of(context).primaryTextTheme.headline1,
                        ),
                      ),
                    ),
                    Container(
                      decoration: true
                          ? null
                          : BoxDecoration(
                              gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromRGBO(255, 241, 248, 1),
                                  Color.fromRGBO(250, 245, 255, 1),
                                  Color.fromRGBO(243, 232, 255, 1),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                      child: ListTile(
                        leading: Image.asset(
                          'assets/icons/core/history_icon_inactive.png',
                          width: 50,
                          height: 50,
                          fit: BoxFit.fill,
                        ),
                        title: Text(
                          'ประวัติ',
                          style: Theme.of(context).primaryTextTheme.headline1,
                        ),
                      ),
                    ),
                    Container(
                      decoration: true
                          ? null
                          : BoxDecoration(
                              gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromRGBO(255, 241, 248, 1),
                                  Color.fromRGBO(250, 245, 255, 1),
                                  Color.fromRGBO(243, 232, 255, 1),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                      child: ListTile(
                        leading: Image.asset(
                          'assets/icons/core/tool_icon_inactive.png',
                          width: 50,
                          height: 50,
                        ),
                        title: Text(
                          'การแจ้งซ่อม',
                          style: Theme.of(context).primaryTextTheme.headline1,
                        ),
                      ),
                    ),
                    Container(
                      decoration: true
                          ? null
                          : BoxDecoration(
                              gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromRGBO(255, 241, 248, 1),
                                  Color.fromRGBO(250, 245, 255, 1),
                                  Color.fromRGBO(243, 232, 255, 1),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                      child: ListTile(
                        leading: Image.asset(
                          'assets/icons/core/alert_icon_inactive.png',
                          width: 50,
                          height: 50,
                        ),
                        title: Text(
                          'การแจ้งซ่อม',
                          style: Theme.of(context).primaryTextTheme.headline1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
