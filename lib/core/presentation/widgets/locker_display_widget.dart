import 'package:flutter/material.dart';

class LockerDisplayWidget extends StatelessWidget {
  final String name;
  final int id;
  final String building;
  final String floor;
  final String room;
  final Widget? bottomWidget;
  const LockerDisplayWidget({
    Key? key,
    required this.name,
    required this.id,
    required this.building,
    required this.floor,
    required this.room,
    this.bottomWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/icons/manage_locker_and_equipment/locker_icon_medium.png',
            width: 64,
            height: 64,
            fit: BoxFit.fill,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  name,
                  style: Theme.of(context).primaryTextTheme.headline3,
                ),
              ),
            ],
          ),
          Text('ID: $id'),
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  'assets/icons/manage_locker_and_equipment/location_icon_medium.png',
                  width: 10,
                  height: 14,
                ),
              ),
              Expanded(flex: 4, child: Text('ห้อง $room ชั้น $floor'))
            ],
          ),
          Row(
            children: [
              const Spacer(),
              Expanded(
                flex: 4,
                child: Text(building),
              )
            ],
          ),
          if (bottomWidget != null) Expanded(child: bottomWidget!),
        ],
      ),
    );
  }
}
