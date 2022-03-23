import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/widgets/tabs_widget.dart';
import 'package:frontend/core/utils/enum.dart';
import 'package:frontend/core/presentation/widgets/home_drawer.dart';
import 'package:frontend/features/streaming_and_record/presentation/widgets/list_all_locker.dart';

class StreamingAndRecordPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    const tabs = <Widget>[
      ListAllLockerWidget(
        viewBy: StreamAndRecordView.department,
      ),
      ListAllLockerWidget(
        viewBy: StreamAndRecordView.location,
      )
    ];
    const tabsBar = ['แผนก', 'ที่ตั้ง'];
    return Scaffold(
      drawer: const HomeDrawer(),
      key: _key,
      appBar: AppBar(
        title: Text(
          'กล้องและวิดีโอ',
          style: Theme.of(context).primaryTextTheme.headline1,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () => _key.currentState!.openDrawer(),
        ),
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
