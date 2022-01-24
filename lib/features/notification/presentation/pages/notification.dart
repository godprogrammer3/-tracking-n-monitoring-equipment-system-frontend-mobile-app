import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/widgets/tabs_widget.dart';
import 'package:frontend/features/notification/presentation/widgets/admin_tab.dart';
import 'package:frontend/features/notification/presentation/widgets/user_tab.dart';

class NotificationPage extends StatelessWidget {
  final List<String> tabsBar = const ['ฝั่งผู้ใช้งาน', 'ฝั่งผู้ดูแล'];
  final List<Widget> tabs = const <Widget>[UserTab(), AdminTab()];
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'การแจ้งเตือน',
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
