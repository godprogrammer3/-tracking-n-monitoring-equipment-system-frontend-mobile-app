import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';

class ListRecordWidget extends StatelessWidget {
  const ListRecordWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const recordList = [
      '7/7/2021 02:59 น.',
      '7/7/2021 04:59 น.',
    ];
    return ListView.builder(
      itemCount: recordList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(recordList[index]),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {
            AutoRouter.of(context).push(const RecordVideoRoute());
          },
        );
      },
    );
  }
}
