import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:timeline_tile/timeline_tile.dart';

class EquipmentHistoryWidget extends HookWidget {
  const EquipmentHistoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TabBar(
                  indicatorColor: Theme.of(context).colorScheme.secondary,
                  isScrollable: true,
                  labelColor: Theme.of(context).colorScheme.secondary,
                  unselectedLabelColor: Colors.grey,
                  tabs: const [
                    Tab(
                      text: 'ประวัติยืม-คืน',
                    ),
                    Tab(
                      text: 'ประวัติแจ้งซ่อม',
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: ExpansionPanelList.radio(
                children: List<ExpansionPanelRadio>.generate(10, (index) {
                  return ExpansionPanelRadio(
                    canTapOnHeader: true,
                    body: _buildExpansionPanelRadioBody(context),
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return _buildExpansionPanelRadioHeader(context);
                    },
                    value: index,
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildExpansionPanelRadioHeader(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 24,
        backgroundImage:
            Image.asset('assets/images/account/profile_image_example.png')
                .image,
      ),
      title: const Text('ยืมอยู่'),
      subtitle: Text(
        '10 ต.ค. 2021 - 09:21',
        style: Theme.of(context).primaryTextTheme.caption,
      ),
    );
  }

  Widget _buildExpansionPanelRadioBody(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            SizedBox(
              width: 15,
            ),
            Text(
              'กำหนดวันคืน: ',
            ),
            Text('27 ก.ย. 2021 - 23:59')
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            children: [
              TimelineTile(
                isFirst: true,
                endChild: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('คืนอุปกรณ์แล้ว'),
                      Text(
                        '2 ต.ค. 2021 - 09:21',
                        style: Theme.of(context).primaryTextTheme.caption,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                indicatorStyle: IndicatorStyle(
                  width: 15,
                  indicatorXY: 0,
                  indicator: CircleAvatar(
                    radius: 4,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    child: const CircleAvatar(
                      radius: 4,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              ),
              TimelineTile(
                endChild: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('เกิดข้อผิดพลาด'),
                      Text(
                        '1 ต.ค. 2021 - 09:21',
                        style: Theme.of(context).primaryTextTheme.caption,
                      ),
                      const Text(
                          'คืนอุปกรณ์ไปตั้งแต่วันที่ 27 แล้วแต่พึ่งมาดูในแอป... ดูเพิ่มเติม'),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                indicatorStyle: const IndicatorStyle(
                  width: 15,
                  indicatorXY: 0,
                  indicator: CircleAvatar(
                    radius: 2,
                    backgroundColor: Colors.grey,
                  ),
                ),
              ),
              TimelineTile(
                endChild: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('คืนอุปกรณ์ล่าช้า 4 วัน'),
                      Text(
                        '1 ต.ค. 2021 - 08:21',
                        style: Theme.of(context).primaryTextTheme.caption,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                indicatorStyle: const IndicatorStyle(
                  width: 15,
                  indicatorXY: 0,
                  indicator: CircleAvatar(
                    radius: 2,
                    backgroundColor: Colors.grey,
                  ),
                ),
              ),
              TimelineTile(
                isLast: true,
                endChild: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('ยืมอุปกรณ์'),
                      Text('21 ก.ย. 2021 - 09:21',
                          style: Theme.of(context).primaryTextTheme.caption),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                indicatorStyle: const IndicatorStyle(
                  width: 15,
                  indicatorXY: 0,
                  indicator: CircleAvatar(
                    radius: 2,
                    backgroundColor: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
