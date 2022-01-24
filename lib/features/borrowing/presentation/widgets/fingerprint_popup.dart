import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/widgets/button_outline_widget.dart';

class FingerprintPopup extends HookWidget {
  const FingerprintPopup({Key? key}) : super(key: key);

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
              'assets/images/borrowing/fingerprint.png',
              width: 60,
              height: 60,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'สแกนลายนิ้วมือเพื่อปลดล็อคตู้',
              style: Theme.of(context).primaryTextTheme.headline2,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: ButtonOutlineWidget(
                'ยกเลิก',
                onPressed: () {
                  AutoRouter.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
