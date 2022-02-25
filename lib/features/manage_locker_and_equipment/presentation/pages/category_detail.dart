import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/equipment_display_widget.dart';

class CategoryDetailPage extends HookWidget {
  final String title;
  const CategoryDetailPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        actions: [
          PopupMenuButton(
            onSelected: (value) {},
            icon: const Icon(Icons.more_vert),
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "แก้ไขข้อมูล",
                    style: Theme.of(context).primaryTextTheme.bodyText1,
                  ),
                ),
              ),
              PopupMenuItem(
                value: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "ลบข้อมูล",
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyText1!
                        .copyWith(color: Theme.of(context).colorScheme.error),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: EquipmentDisplayWidget(
              id: index,
              imagePath:
                  'assets/images/manage_locker_and_equipment/hammer_image.png',
            ),
          );
        },
      ),
    );
  }
}
