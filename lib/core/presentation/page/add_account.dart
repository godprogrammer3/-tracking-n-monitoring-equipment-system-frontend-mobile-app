import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/widgets/account_card_widget.dart';
import 'package:frontend/core/presentation/widgets/search_box_widget.dart';
import 'package:frontend/core/utils/enum.dart';

class AddAccountPage extends StatelessWidget {
  const AddAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'บัญชีผู้ใช้',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {
                  AutoRouter.of(context).pop(['บัญชี1', 'บัญชี2', 'บัญชี3']);
                },
                icon: const Icon(Icons.done))
          ],
          bottom: TabBar(
            indicatorColor: Theme.of(context).colorScheme.secondary,
            isScrollable: true,
            labelColor: Theme.of(context).colorScheme.secondary,
            unselectedLabelColor: Colors.grey,
            tabs: const [
              Tab(
                text: 'ทั้งหมด',
              ),
              Tab(
                text: 'Super admin',
              ),
              Tab(
                text: 'Admin',
              ),
              Tab(
                text: 'M.Maintainer',
              ),
              Tab(
                text: 'Maintainer',
              ),
              Tab(
                text: 'User',
              ),
            ],
          ),
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
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(
                                width: 300,
                                child: AccountCardWidget(
                                  imagePath:
                                      'assets/images/account/profile_image_example.png',
                                  name: 'Darlene Robertson',
                                  role: Role.superAdmin,
                                  department: 'แผนกบริหาร',
                                  email: 'dolores.chambers@example.com',
                                ),
                              ),
                            ],
                          ),
                          Checkbox(
                            activeColor:
                                Theme.of(context).colorScheme.secondary,
                            checkColor: Colors.white,
                            onChanged: (bool? value) {
                              print(value);
                            },
                            value: true,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
