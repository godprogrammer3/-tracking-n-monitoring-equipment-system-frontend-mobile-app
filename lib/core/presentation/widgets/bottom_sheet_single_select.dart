import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BottomSheetSingleSelect extends HookWidget {
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
  const BottomSheetSingleSelect({
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
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: const TextStyle(fontSize: 20),
              ),
              if (isError) ...[
                Text(
                  errorMessage,
                  style: const TextStyle(color: Colors.red),
                ),
              ]
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () => _onPressed(
              context,
              currentValue,
            ),
            child: Container(
              padding: const EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                color: const Color.fromRGBO(242, 241, 244, 1),
                border: isError ? Border.all(color: Colors.red) : null,
              ),
              height: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            currentValue.value != null
                                ? currentValue.value!['displayText'].toString()
                                : placeHolder,
                            style: TextStyle(
                              fontSize: 14,
                              color: currentValue.value != null
                                  ? Colors.black
                                  : const Color.fromRGBO(60, 60, 67, 0.6),
                              overflow: TextOverflow.fade,
                            ),
                          ),
                        ),
                        suffixIcon ??
                            const Icon(
                              Icons.keyboard_arrow_down,
                              size: 30,
                            ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void _onPressed(
    BuildContext context,
    ValueNotifier<Map<String, dynamic>?> currentValue,
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
              child: _buildBody(context, currentValue),
            ),
          ),
        );
      },
    );
  }

  Widget _buildBody(
    BuildContext context,
    ValueNotifier<Map<String, dynamic>?> currentValue,
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
                    leading: Icon(
                      (currentValue.value?['value'] == choice['value'])
                          ? Icons.radio_button_checked
                          : Icons.radio_button_off,
                      color: Theme.of(context).primaryColor,
                    ),
                    title: Text(choice['displayText'].toString()),
                    onTap: () {
                      if (choice['value'] != currentValue.value?['value']) {
                        currentValue.value = choice;
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
