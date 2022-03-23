import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/utils/color_constant.dart' as color_constant;

class ConfirmChangePermissionTypePopup extends HookWidget {
  final bool isPermanentType;
  const ConfirmChangePermissionTypePopup({
    Key? key,
    this.isPermanentType = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isPermanentType)
              _buildForPermanentType(context)
            else
              _buildForTemporaryType(context),
            Text(
              'คุณต้องการดำเนินการต่อหรือไม่ ?',
              style: Theme.of(context).primaryTextTheme.caption,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: Button(
                'ดำเนินการต่อ',
                onPressed: () {
                  AutoRouter.of(context).pop();
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextButton(
              onPressed: () {
                AutoRouter.of(context).pop();
              },
              child: const Text(
                'ย้อนกลับ',
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildForPermanentType(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/icons/manage_locker_and_equipment/switch_icon_large.png',
          width: 60,
          height: 60,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'ยืนยันเปลี่ยนสิทธิเป็นชั่วคราว',
          style: Theme.of(context)
              .primaryTextTheme
              .headline1!
              .copyWith(color: color_constant.warning),
        ),
        Text(
          'แผนกหรือบัญชีผู้ใช้ที่ถูกเปลี่ยนเป็นสิทธิชั่วคราวจะ',
          style: Theme.of(context).primaryTextTheme.caption,
        ),
        Text(
          'สามารถใช้ตู้ล็อกเกอร์ได้เพียงระยะเวลาที่กำหนดเท่านั้น',
          style: Theme.of(context).primaryTextTheme.caption,
        ),
      ],
    );
  }

  Widget _buildForTemporaryType(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/icons/manage_locker_and_equipment/switch_icon_large_primary_color.png',
          width: 60,
          height: 60,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'ยืนยันเปลี่ยนเป็นสิทธิถาวร',
          style: Theme.of(context)
              .primaryTextTheme
              .headline1!
              .copyWith(color: Theme.of(context).colorScheme.secondary),
        ),
        Text(
          'แผนกหรือบัญชีผู้ใช้ที่ถูกเปลี่ยนเป็นสิทธิถาวรจะ',
          style: Theme.of(context).primaryTextTheme.caption,
        ),
        Text(
          'ไม่ถูกจำกัดระยะเวลาการใช้งานตู้ล็อกเกอร์',
          style: Theme.of(context).primaryTextTheme.caption,
        ),
      ],
    );
  }
}
