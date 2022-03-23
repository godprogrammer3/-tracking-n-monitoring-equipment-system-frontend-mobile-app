import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePickerWidget extends HookWidget {
  final void Function(Map<String, dynamic>?) onChanged;
  final double? radius;
  final String? initialPath;
  const ImagePickerWidget({
    this.radius = 50,
    required this.onChanged,
    this.initialPath,
  });
  @override
  Widget build(BuildContext context) {
    final ValueNotifier<String?> currentValue = useState(initialPath);
    return InkWell(
      onTap: () => _onPressed(context, currentValue),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade700),
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              radius: radius,
              backgroundImage: currentValue.value != null
                  ? Image.file(
                      File(currentValue.value as String),
                      fit: BoxFit.cover,
                    ).image
                  : const AssetImage(
                      'assets/images/authentication_feature/register_account.png'),
              backgroundColor: Colors.transparent,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                boxShadow: const [
                  BoxShadow(
                    spreadRadius: 2,
                    blurRadius: 2,
                    color: Color.fromRGBO(60, 60, 67, 0.4),
                  )
                ],
              ),
              child: const Center(
                child: Icon(Icons.camera_alt_outlined),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onPressed(
    BuildContext context,
    ValueNotifier<String?> currentValue,
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
    ValueNotifier<String?> currentValue,
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
                ListTile(
                  title: const Text('ถ่ายรูปโปรไฟล์ใหม่'),
                  onTap: () => onChooseTypePressed(
                      context, ImageSource.camera, currentValue),
                ),
                ListTile(
                  title: const Text('เลือกจากคลังรูปภาพ'),
                  onTap: () => onChooseTypePressed(
                      context, ImageSource.gallery, currentValue),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  Future<void> onChooseTypePressed(
    BuildContext context,
    ImageSource source,
    ValueNotifier<String?> currentValue,
  ) async {
    AutoRouter.of(context).pop();
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: source);
    if (image != null) {
      currentValue.value = image.path;
      onChanged({'value': image});
    }
  }
}
