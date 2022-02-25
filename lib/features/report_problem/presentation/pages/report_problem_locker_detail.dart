import 'package:flutter/material.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/equipment_display_widget.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/equipment_filter_widget.dart';

class ReportProblemLockerDetailPage extends StatelessWidget {
  final String title;

  const ReportProblemLockerDetailPage({Key? key, this.title = 'เครื่องมือช่าง'})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: Theme.of(context).primaryTextTheme.headline1,
        ),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.info_outline,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(
            screenSize.width * 0.05,
            20,
            screenSize.width * 0.05,
            20,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PopupMenuButton(
                    onSelected: (value) {},
                    child: Row(
                      children: [
                        Text(
                          'เรียงตาม ก-ฮ ',
                          style: Theme.of(context).primaryTextTheme.caption,
                        ),
                        const Icon(Icons.expand_more)
                      ],
                    ),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        value: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "เรียงตาม ก-ฮ",
                            style: Theme.of(context).primaryTextTheme.bodyText1,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        showModalBottomSheet<dynamic>(
                          context: context,
                          isScrollControlled: true,
                          builder: (context) {
                            return const EquipmentFilterWidget(
                              listChoices: {
                                'equipmentStatus': [
                                  {'displayText': 'พร้อมใช้งาน'},
                                  {'displayText': 'ถูกยืม'},
                                  {'displayText': 'ส่งซ่อม'},
                                ]
                              },
                            );
                          },
                        );
                      },
                      icon: const Icon(Icons.tune))
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Card(
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: EquipmentDisplayWidget(
                                      id: 1,
                                      imagePath:
                                          'assets/images/manage_locker_and_equipment/hammer_image.png',
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const Divider(),
                            Row(
                              children: [
                                const Text(
                                    'คืนอุปกรณ์ไปตั้งแต่วันที่ 27 แล้วแต่พึ่งมาดูในแอป...'),
                                Text(
                                  'อ่านเพิ่มเติม',
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          )),
    );
  }
}
