import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/account_card_widget.dart';
import 'package:frontend/core/presentation/widgets/search_box_widget.dart';
import 'package:frontend/core/utils/enum.dart';
import 'package:frontend/features/role_management/presentation/widgets/edit_dapartment_widget.dart';

class DepartmentDetailPage extends StatelessWidget {
  const DepartmentDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'แผนกบริหาร',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              if (value == 1) {
                AutoRouter.of(context).push(const AddAccountRoute());
              } else if (value == 2) {
                showModalBottomSheet<dynamic>(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return EditDepartmentWidget();
                  },
                );
              }
            },
            icon: const Icon(Icons.more_vert),
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "เพิ่มสมาชิก",
                    style: Theme.of(context).primaryTextTheme.bodyText1,
                  ),
                ),
              ),
              PopupMenuItem(
                value: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "แก้ไขแผนก",
                    style: Theme.of(context).primaryTextTheme.bodyText1,
                  ),
                ),
              ),
              PopupMenuItem(
                value: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "ลบแผนก",
                    style:
                        Theme.of(context).primaryTextTheme.bodyText1!.copyWith(
                              color: Theme.of(context).colorScheme.error,
                            ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: screenSize.width * 0.8,
                height: 50,
                child: SearchBoxWidget(
                  placeHolder: 'ค้าหาชื่อ,แผนก, Email',
                  onChanged: (value) {
                    print(value);
                  },
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            height: 5,
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '16 Account',
                  style: Theme.of(context).primaryTextTheme.headline2,
                ),
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                itemCount: 30,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: SizedBox(
                      width: 300,
                      child: AccountCardWidget(
                        imagePath:
                            'assets/images/account/profile_image_example.png',
                        name: 'Darlene Robertson',
                        role: Role.superAdmin,
                        department: 'แผนกบริหาร',
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
