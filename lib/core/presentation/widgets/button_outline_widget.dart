import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ButtonOutlineWidget extends HookWidget {
  final String displayText;
  final void Function()? onPressed;
  final Color color;

  const ButtonOutlineWidget(
    this.displayText, {
    required this.onPressed,
    this.color = const Color.fromRGBO(85, 8, 182, 1),
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: color),
          ),
          child: Center(
            child: Text(
              displayText,
              style: TextStyle(
                color: color,
                fontFamily: 'IBM Plex Sans Thai',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
