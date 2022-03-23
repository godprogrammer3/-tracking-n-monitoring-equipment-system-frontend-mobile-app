import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/button_outline_widget.dart';
import 'package:frontend/core/utils/enum.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/confirm_submit_request_fixing_popup.dart';

class RequestFixingWidget extends HookWidget {
  final bool isHasRequestFixing;
  const RequestFixingWidget({Key? key, this.isHasRequestFixing = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          if (isHasRequestFixing)
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.check_box_outline_blank_rounded),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [Text('16 คำขอแจ้งซ่อม')],
                  ),
                ),
              ],
            ),
          const Divider(),
          Expanded(
            child: isHasRequestFixing
                ? _buildFoundCase(context)
                : _buildNotFoundCase(context),
          ),
          const Divider(),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Button(
                'ส่งแจ้งซ่อม',
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) =>
                        const ConfirmSubmitRequestFixingPopup(),
                  );
                },
              ),
              const SizedBox(
                width: 20,
              ),
              ButtonOutlineWidget('ปฏิเสธแจ้งซ่อม', onPressed: () {}),
            ],
          )
        ],
      ),
    );
  }

  Widget renderRoleIcon(Role role) {
    if (role == Role.user) {
      return Container();
    }

    String assetPath;
    if (role == Role.superAdmin) {
      assetPath = 'assets/icons/role_management/super_admin_icon.png';
    } else if (role == Role.admin) {
      assetPath = 'assets/icons/role_management/admin_icon.png';
    } else if (role == Role.masterMaintainer) {
      assetPath = 'assets/icons/role_management/master_maintainer_icon.png';
    } else {
      assetPath = 'assets/icons/role_management/maintainer_icon.png';
    }
    return Image.asset(
      assetPath,
      width: 30,
      height: 30,
    );
  }

  Widget _buildNotFoundCase(BuildContext context) {
    return Center(
      child: Text(
        'ไม่มีคำขอแจ้งซ่อม',
        style: Theme.of(context).primaryTextTheme.caption,
      ),
    );
  }

  Widget _buildFoundCase(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.check_box_outline_blank_rounded),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: Image.asset(
                      'assets/images/account/profile_image_example.png',
                    ).image,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Bessie Cooper',
                        style: Theme.of(context).primaryTextTheme.headline3,
                      ),
                      const SizedBox(width: 10),
                      renderRoleIcon(Role.superAdmin),
                    ],
                  ),
                  const Text(
                    'สีค้อนถลอกครับ มันดูไม่สวยงามและ ไม่น่าใช้งานรบกวนนำไปทาสีใหม่หน่อย ได้ไหมครับ... ',
                    softWrap: true,
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          AutoRouter.of(context)
                              .push(const RequestFixingDetailRoute());
                        },
                        child: Text(
                          'อ่านเพิ่มเติม',
                          style: Theme.of(context).primaryTextTheme.caption,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: const [Text('2d')],
              ),
            )
          ],
        );
      },
    );
  }
}
