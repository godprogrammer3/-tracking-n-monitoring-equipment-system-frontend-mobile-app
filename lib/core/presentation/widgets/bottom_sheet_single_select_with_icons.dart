import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BottomSheetSingleSelectWithIcons extends HookWidget {
  final String label;
  final void Function(Map<String, dynamic>?) onChanged;
  final bool isError;
  final String errorMessage;
  final String placeHolder;
  final Widget? suffixIcon;
  final bool isObscureText;
  final TextInputType? keyboardType;
  final Map<String, dynamic>? initialValue;
  final List<Map<String, dynamic>> listChoice;
  const BottomSheetSingleSelectWithIcons({
    required this.onChanged,
    this.isError = false,
    this.errorMessage = 'กรุณากรอกข้อมูลให้ถูกต้อง',
    this.label = '',
    this.placeHolder = 'กรุณากรอกข้อมูล',
    this.suffixIcon,
    this.isObscureText = false,
    this.keyboardType,
    this.initialValue,
    this.listChoice = const [],
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
              child: _buildBody(
                context,
                currentValue,
                controller,
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildBody(
    BuildContext context,
    ValueNotifier<Map<String, dynamic>?> currentValue,
    TextEditingController controller,
  ) {
    return StatefulBuilder(
      builder: (BuildContext context, void Function(void Function()) setState) {
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
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                ...listChoice.map(
                  (choice) => ListTile(
                    leading: Icon(choice['icon'] as IconData),
                    trailing: Icon(
                      (currentValue.value?['value'] == choice['value'])
                          ? Icons.radio_button_checked
                          : Icons.radio_button_off,
                      color: Theme.of(context).primaryColor,
                    ),
                    title: Text(choice['displayText'].toString()),
                    onTap: () {
                      if (choice['value'] != currentValue.value?['value']) {
                        currentValue.value = choice;
                        controller.text = choice['displayText'].toString();
                        onChanged(currentValue.value);
                        setState(() {});
                        AutoRouter.of(context).pop();
                      } else {
                        AutoRouter.of(context).pop();
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
