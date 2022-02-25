import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/widgets/account_card_widget.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/button_outline_widget.dart';
import 'package:frontend/core/presentation/widgets/search_box_widget.dart';
import 'package:frontend/core/utils/enum.dart';
import 'package:frontend/features/role_management/presentation/widgets/confirm_block_popup.dart';

class BlockAccountPage extends StatelessWidget {
  const BlockAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'การบล็อค',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
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
                  '4 Account',
                  style: Theme.of(context).primaryTextTheme.headline2,
                ),
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                itemCount: 4,
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
                        ButtonOutlineWidget(
                          'บล็อค',
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => const ConfirmBlockPopup(),
                            );
                          },
                          color: Colors.black,
                        ),
                      ],
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
