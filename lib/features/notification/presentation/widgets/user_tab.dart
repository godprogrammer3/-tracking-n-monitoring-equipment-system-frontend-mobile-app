import 'package:flutter/material.dart';

class UserTab extends StatelessWidget {
  const UserTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          width: 100,
          height: 100,
          color: Colors.green,
        );
      },
    );
  }
}
