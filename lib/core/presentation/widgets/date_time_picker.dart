import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';

class DateTimePicker extends HookWidget {
  final String label;
  final void Function(Map<String, dynamic>?) onChanged;
  final bool isError;
  final String errorMessage;
  final String placeHolder;
  final Widget? suffixIcon;
  final bool isObscureText;
  final Map<String, dynamic>? initialValue;
  const DateTimePicker({
    required this.onChanged,
    this.isError = false,
    this.errorMessage = 'กรุณากรอกข้อมูลให้ถูกต้อง',
    this.label = '',
    this.placeHolder = 'กรุณากรอกข้อมูล',
    this.suffixIcon,
    this.isObscureText = false,
    this.initialValue,
  });
  @override
  Widget build(BuildContext context) {
    final ValueNotifier<Map<String, dynamic>?> currentValue =
        useState(initialValue);
    final controller = useTextEditingController();
    return Expanded(
      child: InkWell(
        onTap: () => _onPressed(context, currentValue, controller),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            suffixIcon: const Icon(
              Icons.keyboard_arrow_down,
            ),
            hintText: placeHolder,
            label: Text(
              label,
              style: const TextStyle(
                fontFamily: 'IBM Plex Sans Thai',
                fontSize: 25,
              ),
            ),
            errorText: isError ? errorMessage : null,
          ),
          enabled: false,
          style: const TextStyle(overflow: TextOverflow.ellipsis),
        ),
      ),
    );
  }

  void _onPressed(
    BuildContext context,
    ValueNotifier<Map<String, dynamic>?> currentValue,
    TextEditingController controller,
  ) async {
    final result = await showDatePicker(
      context: context,
      firstDate: DateTime(1950),
      initialDate: DateTime.now(),
      lastDate: DateTime.now(),
    );
    if (result != null) {
      controller.text = DateFormat('dd/MM/yyyy').format(result);
      onChanged({
        'value': result,
        'displayText': controller.text,
      });
    }
  }
}
