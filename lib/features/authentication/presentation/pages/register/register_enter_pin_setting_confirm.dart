import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';

class RegisterEnterPinSettingConfirmPage extends HookWidget {
  const RegisterEnterPinSettingConfirmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final pinCount = useState(0);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pin setting',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
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
                        'assets/images/authentication_feature/register_lock_circle.png',
                        height: 100,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'กรุณายืนยันรหัส PIN อีกครั้ง',
                      style: Theme.of(context).primaryTextTheme.headline1,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: _buildPinDots(context, pinCount),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: _buildNumbPad(context, pinCount),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildNumbPad(
    BuildContext context,
    ValueNotifier<int> pinCount,
  ) {
    final List<Widget> rows = [];
    int countNumber = 1;
    for (int row = 0; row < 4; row++) {
      final List<Widget> cols = [];
      for (int col = 0; col < 3; col++) {
        if (row == 3 && col == 2) {
          cols.add(
            Expanded(
              child: Container(
                height: double.maxFinite,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).dividerColor,
                    width: 0.5,
                  ),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.backspace,
                    color: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {
                    pinCount.value--;
                  },
                ),
              ),
            ),
          );
        } else if (row == 3 && col == 0) {
          cols.add(
            Expanded(
              child: Container(
                height: double.maxFinite,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).dividerColor,
                    width: 0.5,
                  ),
                ),
              ),
            ),
          );
        } else {
          cols.add(
            Expanded(
              child: Container(
                height: double.maxFinite,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).dividerColor,
                    width: 0.5,
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    pinCount.value++;
                    if (pinCount.value == 6) {
                      AutoRouter.of(context)
                          .push(const RegisterVerifyEmailRoute());
                    }
                  },
                  child: Text(
                    countNumber.toString(),
                    style: Theme.of(context)
                        .primaryTextTheme
                        .headline1
                        ?.copyWith(color: Theme.of(context).primaryColor),
                  ),
                ),
              ),
            ),
          );
          countNumber++;
          countNumber %= 10;
        }
      }
      rows.add(
        Expanded(
          child: Row(
            children: cols,
          ),
        ),
      );
    }
    return rows;
  }

  List<Widget> _buildPinDots(
    BuildContext context,
    ValueNotifier<int> pinCount,
  ) {
    final List<Widget> icons = [];
    for (int col = 0; col < 6; col++) {
      icons.add(
        Icon(
          col + 1 <= pinCount.value
              ? Icons.radio_button_checked
              : Icons.radio_button_off,
          color: Theme.of(context).primaryColor,
        ),
      );
    }
    return icons;
  }
}
