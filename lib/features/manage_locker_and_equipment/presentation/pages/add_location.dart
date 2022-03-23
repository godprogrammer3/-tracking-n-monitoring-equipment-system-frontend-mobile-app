import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/bottom_sheet_single_select.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/input_text.dart';
import 'package:frontend/features/role_management/presentation/widgets/add_user_popup_confirm.dart';
import 'package:searchfield/searchfield.dart';

class AddLocationPage extends StatelessWidget {
  const AddLocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'เพิ่มสถานที่',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
            onPressed: () {
              AutoRouter.of(context).push(const AddLocationRoute());
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          screenSize.width * 0.1,
          screenSize.height * 0.05,
          screenSize.width * 0.1,
          0,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'กรอก',
                  style: Theme.of(context).primaryTextTheme.headline1,
                ),
                Text(
                  ' สถานที่ตั้ง ',
                  style: Theme.of(context)
                      .primaryTextTheme
                      .headline1!
                      .copyWith(color: Theme.of(context).colorScheme.secondary),
                ),
                Text(
                  'ของตู้ล็อกเกอร์',
                  style: Theme.of(context).primaryTextTheme.headline1,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ขั้นตอนการเพิ่มสถานที่จำเป้นต้อง',
                  style: Theme.of(context).primaryTextTheme.caption,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'เพิ่มอาคาร > เพิ่มชั้น > เพิ่มห้อง',
                  style: Theme.of(context).primaryTextTheme.caption,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: SearchField(
                    hint: 'อาคาร',
                    suggestions: [
                      SearchFieldListItem('ECC Bulding'),
                      SearchFieldListItem('ECC Bulding ตึกมหัศจรรย์'),
                    ],
                    searchInputDecoration: InputDecoration(
                      label: Text(
                        'อาคาร',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                    suggestionAction: SuggestionAction.unfocus,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: SearchField(
                    hint: 'ชั้น',
                    suggestions: [
                      SearchFieldListItem('ชั้น 1'),
                      SearchFieldListItem('ชั้น 2'),
                    ],
                    searchInputDecoration: InputDecoration(
                      label: Text(
                        'ชั้น',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                    suggestionAction: SuggestionAction.unfocus,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: SearchField(
                    hint: 'ห้อง',
                    suggestions: [
                      SearchFieldListItem('ห้อง 1'),
                      SearchFieldListItem('ห้อง 2'),
                    ],
                    searchInputDecoration: InputDecoration(
                      label: Text(
                        'ห้อง',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                    suggestionAction: SuggestionAction.unfocus,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(
                  'บันทึก',
                  onPressed: () {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
