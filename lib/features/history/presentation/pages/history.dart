import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/widgets/tabs_widget.dart';
import 'package:frontend/features/history/presentation/widgets/borrowing_list_tab.dart';
import 'package:frontend/features/history/presentation/widgets/fixing_request_list_tab.dart';

class HistoryPage extends StatelessWidget {
  final List<String> tabsBar = const ['รายการยืม/คืน', 'คำร้องขอแจ้งซ่อม'];
  final List<Widget> tabs = const <Widget>[
    BorrowingListTab(),
    FixingRequestListTab()
  ];
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ประวัติ',
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
        child: TabsWidget(
          tabs: tabs,
          tabsBar: tabsBar,
        ),
      ),
    );
  }
}
