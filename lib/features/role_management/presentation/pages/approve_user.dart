import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/widgets/search_box_widget.dart';

class ApproveUserPage extends StatelessWidget {
  const ApproveUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'อนุมัติผู้ใช้งาน',
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      '16 Account',
                      style: Theme.of(context).primaryTextTheme.headline2,
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
