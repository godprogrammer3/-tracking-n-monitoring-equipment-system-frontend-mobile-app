import 'package:flutter/material.dart';

class LockerTab extends StatelessWidget {
  const LockerTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      crossAxisCount: 2,
      children: List<Widget>.generate(
        10,
        (index) => Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
      ),
    );
  }
}
