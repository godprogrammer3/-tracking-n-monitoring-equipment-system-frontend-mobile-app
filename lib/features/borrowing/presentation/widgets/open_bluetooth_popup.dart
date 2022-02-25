import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/widgets/button.dart';

class OpenBluetoothPopup extends HookWidget {
  const OpenBluetoothPopup({Key? key}) : super(key: key);

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
              'assets/icons/borrowing/bluetooth.png',
              width: 60,
              height: 60,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'บริการนี้ต้องใช้บลูทูธ',
              style: Theme.of(context).primaryTextTheme.headline3,
            ),
            Text(
              'คุณต้องการเปิดบลูทูธตอนนี้หรือไม่',
              style: Theme.of(context).primaryTextTheme.headline3,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: Button(
                'เปิดบลูทูธ',
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
