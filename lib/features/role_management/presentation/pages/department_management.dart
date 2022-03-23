import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/features/role_management/presentation/widgets/add_dapartment_widget.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';

class DepartmentManagementPage extends StatelessWidget {
  const DepartmentManagementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final List<String> departmentList = [
      'แผนกบริหาร',
      'แผนกบุคคล',
      'แผนกจัดซื้อ',
      'แผนกบัญชี',
      'แผนกขาย',
      'แผนกการตลาด',
      'แผนกประชาสัมพันธ์',
      'แผนกซ่อมแซม'
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'จัดการแผนก',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet<dynamic>(
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return AddDepartmentWidget();
                },
              );
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      resizeToAvoidBottomInset: true,
      body: ListView.builder(
        itemCount: departmentList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              departmentList[index],
              style: Theme.of(context).primaryTextTheme.bodyText1,
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              AutoRouter.of(context).push(const DepartmentDetailRoute());
            },
          );
        },
      ),
    );
  }
}
