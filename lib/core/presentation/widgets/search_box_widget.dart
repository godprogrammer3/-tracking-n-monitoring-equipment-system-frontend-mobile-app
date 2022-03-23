import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchBoxWidget extends HookWidget {
  final void Function(String) onChanged;
  final bool isError;
  final String errorMessage;
  final String? placeHolder;
  final Widget? suffixIcon;
  final bool isObscureText;
  final TextInputType? keyboardType;
  const SearchBoxWidget({
    required this.onChanged,
    this.isError = false,
    this.errorMessage = 'กรุณากรอกข้อมูลให้ถูกต้อง',
    this.placeHolder,
    this.suffixIcon,
    this.isObscureText = false,
    this.keyboardType,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(240, 240, 240, 1),
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: placeHolder,
            suffixIcon: suffixIcon,
            errorText: isError ? errorMessage : null,
            border: InputBorder.none,
            prefixIcon: const Icon(Icons.search),
          ),
          onChanged: onChanged,
          obscureText: isObscureText,
          keyboardType: keyboardType,
          style: const TextStyle(
            fontFamily: 'IBM Plex Sans Thai',
          ),
        ),
      ),
    );
  }
}
