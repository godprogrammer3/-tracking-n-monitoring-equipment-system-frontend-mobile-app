import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/widgets/button.dart';

class ConfirmBlockPopup extends HookWidget {
  const ConfirmBlockPopup({Key? key}) : super(key: key);

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
              'assets/icons/role_management/block_icon_medium.png',
              width: 60,
              height: 60,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'บล็อค Darlene Robertson?',
              style: Theme.of(context)
                  .primaryTextTheme
                  .headline3!
                  .copyWith(color: Theme.of(context).colorScheme.error),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'บัญชีผู้ใช้งานจะไม่สามารถเข้าสู่ระบบ Toollo',
              style: Theme.of(context).primaryTextTheme.caption,
            ),
            Text(
              'ได้อีกต่อไปจนกว่าจะถูกปลดบล็อค',
              style: Theme.of(context).primaryTextTheme.caption,
            ),
            Text(
              'คุณต้องการบล็อคผู้ใช้งานหรือไม่ ?',
              style: Theme.of(context).primaryTextTheme.caption,
            ),
            SizedBox(
              width: 200,
              child: Button(
                'บล็อค',
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
