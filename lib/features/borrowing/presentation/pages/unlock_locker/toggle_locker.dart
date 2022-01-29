import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

enum ButtonState {
  locked,
  lockedPushed,
  unlocked,
  unlockedPushed,
}

class ToggleLockerPage extends HookWidget {
  final int lockerId;
  const ToggleLockerPage({
    Key? key,
    @PathParam() required this.lockerId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final ValueNotifier<ButtonState> buttonState = useState(ButtonState.locked);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'เครื่องมือช่าง',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.help_outline))
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.05,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Image.asset(
                            'assets/images/borrowing/logo_water_mark.png')
                        .image,
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                    screenSize.width * 0.2,
                    screenSize.height * 0.05,
                    screenSize.width * 0.1,
                    0,
                  ),
                ),
              ),
            ),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            GestureDetector(
              onTap: () {
                if (buttonState.value == ButtonState.locked ||
                    buttonState.value == ButtonState.lockedPushed) {
                  buttonState.value = ButtonState.unlocked;
                } else {
                  buttonState.value = ButtonState.locked;
                }
              },
              onTapDown: (tabDownDetail) {
                if (buttonState.value == ButtonState.locked ||
                    buttonState.value == ButtonState.lockedPushed) {
                  buttonState.value = ButtonState.lockedPushed;
                } else {
                  buttonState.value = ButtonState.unlockedPushed;
                }
              },
              child: Image.asset(
                computedAssetName(buttonState.value),
                width: 200,
                height: 200,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'กดเพื่อ',
                  style: Theme.of(context).primaryTextTheme.bodyText1,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  buttonState.value == ButtonState.locked ||
                          buttonState.value == ButtonState.lockedPushed
                      ? 'ปลดล็อค'
                      : 'ล็อค',
                  style: Theme.of(context)
                      .primaryTextTheme
                      .bodyText1!
                      .copyWith(color: Theme.of(context).colorScheme.secondary),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'ตู้ล็อกเกอร์',
                  style: Theme.of(context).primaryTextTheme.bodyText1,
                ),
              ],
            )
          ]),
        ],
      ),
    );
  }

  String computedAssetName(ButtonState buttonState) {
    if (buttonState == ButtonState.locked) {
      return 'assets/icons/borrowing/locked_icon.png';
    } else if (buttonState == ButtonState.lockedPushed) {
      return 'assets/icons/borrowing/locked_pushed_icon.png';
    } else if (buttonState == ButtonState.unlocked) {
      return 'assets/icons/borrowing/unlocked_icon.png';
    } else {
      return 'assets/icons/borrowing/unlocked_pushed_icon.png';
    }
  }
}
