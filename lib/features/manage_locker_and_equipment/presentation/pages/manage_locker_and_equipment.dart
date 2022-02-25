import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/utils/enum.dart';
import 'package:frontend/core/presentation/widgets/home_drawer.dart';

class ManageLockerAndEquipmentPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const HomeDrawer(),
      key: _key,
      appBar: AppBar(
        title: Text(
          'ตู้และอุปกรณ์',
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
            Card(
              child: ListTile(
                leading: Image.asset(
                  'assets/icons/manage_locker_and_equipment/locker_icon_medium.png',
                  width: 50,
                  height: 50,
                ),
                title: const Text('จัดการตู้และอุปกรณ์'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  AutoRouter.of(context).push(AllLockerRoute());
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Card(
              child: ListTile(
                leading: Image.asset(
                  'assets/icons/manage_locker_and_equipment/location_icon_medium.png',
                  width: 50,
                  height: 50,
                ),
                title: const Text('จัดการสถานที่'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  AutoRouter.of(context).push(
                    AllLocationRoute(
                      title: 'จัดการสถานที่',
                      viewBy: ManagementLocationView.building,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Card(
              child: ListTile(
                leading: Image.asset(
                  'assets/icons/manage_locker_and_equipment/category_icon_medium.png',
                  width: 50,
                  height: 50,
                ),
                title: const Text('จัดการหมวดหมู่'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  AutoRouter.of(context).push(AllCategoryRoute());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
