import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/widgets/tabs_widget.dart';
import 'package:frontend/features/streaming_and_record/presentation/widgets/list_camera_widget.dart';
import 'package:frontend/features/streaming_and_record/presentation/widgets/list_record_widget.dart';

class AllCameraPage extends StatelessWidget {
  final String title;

  const AllCameraPage({Key? key, this.title = 'ตู้ล็อกเกอร์'})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    const tabs = <Widget>[
      ListCameraWidget(),
      ListRecordWidget(),
    ];
    const tabsBar = ['Live', 'ดูย้อนหลัง'];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: Theme.of(context).primaryTextTheme.headline1,
        ),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.help_outline_sharp,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          screenSize.width * 0.05,
          20,
          screenSize.width * 0.05,
          20,
        ),
        child: Column(
          children: [
            Expanded(
              child: TabsWidget(
                tabsBar: tabsBar,
                tabs: tabs,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
