import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/features/borrowing/presentation/widgets/open_bluetooth_popup.dart';

class ListLockerPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    useEffect(() {
      Future.microtask(
        () => showDialog(
          context: context,
          builder: (context) => const OpenBluetoothPopup(),
        ),
      );
    });
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'เปิดตู้ล็อกเกอร์',
          style: Theme.of(context).primaryTextTheme.headline1,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          screenSize.width * 0.05,
          0,
          screenSize.width * 0.05,
          0,
        ),
        child: GridView.count(
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          crossAxisCount: 2,
          children: List<Widget>.generate(
            10,
            (index) => InkWell(
              onTap: () =>
                  AutoRouter.of(context).push(ToggleLockerRoute(lockerId: 1)),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
