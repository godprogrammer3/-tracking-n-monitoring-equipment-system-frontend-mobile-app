import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class InputText extends HookWidget {
  final String label;
  final void Function(String) onChanged;
  final bool isError;
  final String errorMessage;
  final String? placeHolder;
  final Widget? suffixIcon;
  final bool isObscureText;
  final TextInputType? keyboardType;
  const InputText({
    required this.onChanged,
    this.isError = false,
    this.errorMessage = 'กรุณากรอกข้อมูลให้ถูกต้อง',
    this.label = '',
    this.placeHolder,
    this.suffixIcon,
    this.isObscureText = false,
    this.keyboardType,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: const TextStyle(
                    fontSize: 20, fontFamily: 'IBM Plex Sans Thai'),
              ),
              if (isError) ...[
                Text(
                  errorMessage,
                  style: const TextStyle(
                      color: Colors.red, fontFamily: 'IBM Plex Sans Thai'),
                ),
              ]
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: const Color.fromRGBO(246, 245, 248, 1),
              border: isError ? Border.all(color: Colors.red) : null,
            ),
            height: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextFormField(
                    style: const TextStyle(
                        fontSize: 20, fontFamily: 'IBM Plex Sans Thai'),
                    decoration: InputDecoration(
                      hintText: placeHolder,
                      suffixIcon: suffixIcon,
                    ),
                    autocorrect: false,
                    onChanged: onChanged,
                    obscureText: isObscureText,
                    keyboardType: keyboardType,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
