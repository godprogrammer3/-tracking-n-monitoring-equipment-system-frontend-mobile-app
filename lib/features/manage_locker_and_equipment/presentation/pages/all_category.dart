import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/tabs_widget.dart';
import 'package:frontend/core/utils/enum.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/list_locker_and_equipment_widget.dart';

class AllCategoryPage extends StatelessWidget {
  final bool isHaCategory;
  const AllCategoryPage({Key? key, this.isHaCategory = true}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'จัดการหมวดหมู่',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              AutoRouter.of(context).push(const AddCategoryRoute());
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          screenSize.width * 0.1,
          screenSize.height * 0.05,
          screenSize.width * 0.1,
          0,
        ),
        child: isHaCategory
            ? _buildFoundCase(context)
            : _buildNotFoundCase(context),
      ),
    );
  }

  Widget _buildNotFoundCase(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/manage_locker_and_equipment/category_icon_large.png',
              width: 100,
              height: 100,
              fit: BoxFit.fill,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                '+ เพิ่มหมวดหมู่ของอุปกรณ์',
                style: Theme.of(context).primaryTextTheme.headline3!.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _buildFoundCase(BuildContext context) {
    const categories = ['สว่านไฟฟ้า', 'ค้อน'];
    return ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(categories[index]),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                AutoRouter.of(context)
                    .push(CategoryDetailRoute(title: categories[index]));
              },
            ),
          );
        });
  }
}
