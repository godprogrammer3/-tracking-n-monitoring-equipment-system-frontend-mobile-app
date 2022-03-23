import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/widgets/button_outline_widget.dart';

class ConfirmDeletePermissionPopup extends HookWidget {
  final bool isPermanentType;
  const ConfirmDeletePermissionPopup({
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
            Image.asset(
              'assets/icons/manage_locker_and_equipment/bin_icon_large.png',
              width: 60,
              height: 60,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              isPermanentType ? 'ลบสิทธิ์ประเภทถาวร' : 'ลบสิทธิ์ประเภทชั่วคราว',
              style: Theme.of(context)
                  .primaryTextTheme
                  .headline1!
                  .copyWith(color: Theme.of(context).colorScheme.error),
            ),
            Text(
              'แผนกหรือบัญชีผู้ใช้ที่ถูกลบ',
              style: Theme.of(context).primaryTextTheme.caption,
            ),
            Text(
              'จะไม่สามารถใช้งานตู้ล็อกเกอร์ได้อีกต่อไป',
              style: Theme.of(context).primaryTextTheme.caption,
            ),
            Text(
              'คุณต้องการดำเนินการต่อหรือไม่ ?',
              style: Theme.of(context).primaryTextTheme.caption,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: ButtonOutlineWidget(
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
}
