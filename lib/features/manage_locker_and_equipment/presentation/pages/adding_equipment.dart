import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';

class AddingEquipment extends HookWidget {
  const AddingEquipment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      Future.delayed(const Duration(seconds: 3), () {
        AutoRouter.of(context).replace(const AddEquipmentRoute());
      });
    });
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/manage_locker_and_equipment/toollo_loading.png',
              fit: BoxFit.fill,
              width: 200,
              height: 200,
            ),
          ),
          const Center(child: Text('กรุณารอสักครู่')),
          const Center(child: Text('ระบบกำลังแสกนหาอุปกรณ์')),
        ],
      )),
    );
  }
}
