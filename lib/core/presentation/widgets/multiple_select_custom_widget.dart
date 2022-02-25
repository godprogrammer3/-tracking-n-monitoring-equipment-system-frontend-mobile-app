import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MultipleSelectCustomWidget extends HookWidget {
  final String label;
  final bool isError;
  final String errorMessage;
  final String placeHolder;
  final Widget? suffixIcon;
  final List? listValue;
  final Future<List?> Function() onTap;
  final void Function(List?) onChanged;
  const MultipleSelectCustomWidget({
    required this.listValue,
    required this.onChanged,
    required this.onTap,
    this.isError = false,
    this.errorMessage = 'กรุณากรอกข้อมูลให้ถูกต้อง',
    this.label = '',
    this.placeHolder = 'กรุณากรอกข้อมูล',
    this.suffixIcon,
  });
  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: listValue?.toString());
    final ValueNotifier<int> length = useState(listValue?.length ?? 0);
    return Expanded(
      child: InkWell(
        onTap: () async {
          final List? selectedValue = await onTap();
          if (selectedValue != null) {
            controller.text = selectedValue.toString();
            length.value = selectedValue.length;
          } else {
            controller.clear();
          }
          onChanged(selectedValue);
        },
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            suffixText: length.value.toString(),
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
}
