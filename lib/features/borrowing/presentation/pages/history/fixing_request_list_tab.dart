import 'package:flutter/material.dart';

class FixingRequestListTab extends StatelessWidget {
  const FixingRequestListTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          width: 100,
          height: 100,
          color: Colors.red,
        );
      },
    );
  }
}
