import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/widgets/button.dart';

class ConfirmSubmitRequestFixingPopup extends HookWidget {
  const ConfirmSubmitRequestFixingPopup({Key? key}) : super(key: key);

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
              'assets/icons/manage_locker_and_equipment/fixing_icon_large.png',
              width: 60,
              height: 60,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'ส่ง 3 คำขอแจ้งซ่อม',
              style: Theme.of(context)
                  .primaryTextTheme
                  .headline1!
                  .copyWith(color: Theme.of(context).colorScheme.secondary),
            ),
            Text(
              'คำขอแจ้งซ่อมจะถูกส่งให้ Maintainer และ',
              style: Theme.of(context).primaryTextTheme.caption,
            ),
            Text(
              'คำขอแจ้งซ่อมที่ไม่ถูกเลือกจะถูกลบออก',
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
                'ยกเลิก',
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
