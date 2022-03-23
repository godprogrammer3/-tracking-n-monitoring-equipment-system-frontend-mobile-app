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
  final String? initialValue;
  const InputText({
    required this.onChanged,
    this.isError = false,
    this.errorMessage = 'กรุณากรอกข้อมูลให้ถูกต้อง',
    this.label = '',
    this.placeHolder,
    this.suffixIcon,
    this.isObscureText = false,
    this.keyboardType,
    this.initialValue,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        initialValue: initialValue,
        decoration: InputDecoration(
          label: Text(
            label,
            style: const TextStyle(
              fontFamily: 'IBM Plex Sans Thai',
              fontSize: 14,
            ),
          ),
          hintText: placeHolder,
          suffixIcon: suffixIcon,
          errorText: isError ? errorMessage : null,
        ),
        onChanged: onChanged,
        obscureText: isObscureText,
        keyboardType: keyboardType,
        style: const TextStyle(
          fontFamily: 'IBM Plex Sans Thai',
          fontSize: 14,
        ),
      ),
    );
  }
}
