import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class BottomSheetNumberPicker extends HookWidget {
  final String label;
  final void Function(int) onChanged;
  final bool isError;
  final String errorMessage;
  final String placeHolder;
  final Widget? suffixIcon;
  final bool isObscureText;
  final double? initialValue;
  final List<Map<String, dynamic>> listChoice;
  final Widget? headerWidget;
  final int min;
  final int max;
  const BottomSheetNumberPicker({
    required this.onChanged,
    required this.min,
    required this.max,
    this.isError = false,
    this.errorMessage = 'กรุณากรอกข้อมูลให้ถูกต้อง',
    this.label = '',
    this.placeHolder = 'กรุณากรอกข้อมูล',
    this.suffixIcon,
    this.isObscureText = false,
    this.initialValue,
    this.listChoice = const [],
    this.headerWidget,
  });
  @override
  Widget build(BuildContext context) {
    final ValueNotifier<double> currentValue = useState(initialValue ?? 1.0);
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
    ValueNotifier<double> currentValue,
    TextEditingController controller,
  ) {
    showModalBottomSheet<dynamic>(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.9),
          child: Container(
            color: const Color(0xFF737373),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: _buildBody(context, currentValue, controller),
            ),
          ),
        );
      },
    );
  }

  Widget _buildBody(
    BuildContext context,
    ValueNotifier<double> currentValue,
    TextEditingController controller,
  ) {
    return StatefulBuilder(builder:
        (BuildContext context, void Function(void Function()) setState) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 12),
                width: 40,
                height: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromRGBO(224, 224, 224, 1),
                ),
              )
            ],
          ),
          DecimalNumberPicker(
            value: currentValue.value,
            minValue: min,
            maxValue: max,
            onChanged: (value) {
              currentValue.value = value;
              controller.text = (value * 10).toInt().toString();
              onChanged((value * 10).toInt());
              setState(() {});
            },
          ),
        ],
      );
    });
  }
}
