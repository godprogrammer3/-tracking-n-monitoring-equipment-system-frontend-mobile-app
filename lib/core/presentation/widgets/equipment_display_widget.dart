import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/utils/enum.dart';

class EquipmentImageDisplayWidget extends HookWidget {
  final Size size;
  final String imagePath;
  final EquipmentStatus? status;
  const EquipmentImageDisplayWidget({
    Key? key,
    required this.imagePath,
    required this.size,
    this.status,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 1, color: Colors.grey.shade400)),
      child: Stack(
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.fill,
            height: size.height,
            width: size.width,
          ),
          if (status != null)
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                  'assets/icons/manage_locker_and_equipment/late_status_icon.png',
                  fit: BoxFit.fill,
                  width: size.width * 0.8),
            )
        ],
      ),
    );
  }
}
