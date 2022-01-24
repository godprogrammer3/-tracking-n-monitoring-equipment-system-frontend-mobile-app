import 'package:flutter/material.dart';

class BorrowingListTab extends StatelessWidget {
  const BorrowingListTab({Key? key}) : super(key: key);

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
