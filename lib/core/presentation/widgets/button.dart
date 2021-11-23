import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Button extends HookWidget {
  final String displayText;
  final void Function()? onPressed;

  const Button(
    this.displayText, {
    this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Theme.of(context).primaryColorDark,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          onTap: onPressed,
          child: SizedBox(
            height: 50,
            child: Center(
              child: Text(
                displayText,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'IBM Plex Sans Thai',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
