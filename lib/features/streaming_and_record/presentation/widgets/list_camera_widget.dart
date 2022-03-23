import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';

class ListCameraWidget extends StatelessWidget {
  const ListCameraWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const cameraList = ['กล้อง 1', 'กล้อง 2', 'กล้อง 3', 'กล้อง 4'];
    return ListView.builder(
      itemCount: cameraList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(cameraList[index]),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {
            AutoRouter.of(context).push(LiveCameraRoute());
          },
        );
      },
    );
  }
}
