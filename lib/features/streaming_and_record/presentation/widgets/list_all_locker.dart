import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/utils/enum.dart';

class ListAllLockerWidget extends HookWidget {
  final StreamAndRecordView viewBy;
  const ListAllLockerWidget({
    Key? key,
    required this.viewBy,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: ExpansionPanelList.radio(
              children: List<ExpansionPanelRadio>.generate(15, (index) {
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
    );
  }

  Widget _buildExpansionPanelRadioHeader(BuildContext context) {
    if (viewBy == StreamAndRecordView.department) {
      return Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Text(
            'แผนกบริหาร',
            style: Theme.of(context).primaryTextTheme.bodyText1,
          ),
          Text(
            ' (2)',
            style: Theme.of(context).primaryTextTheme.caption,
          ),
        ],
      );
    } else {
      return Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Text(
            'ห้อง 504 ชั้น 5 Headquarter',
            style: Theme.of(context).primaryTextTheme.bodyText1,
          ),
          Text(
            ' (2)',
            style: Theme.of(context).primaryTextTheme.caption,
          ),
        ],
      );
    }
  }

  Widget _buildExpansionPanelRadioBody(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        'assets/icons/manage_locker_and_equipment/locker_icon_medium.png',
        width: 48,
        height: 45.18,
      ),
      title: const Text('ตู้เก็บ Macbook 1'),
      subtitle: const Text('ID: 111111'),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.more_vert),
      ),
      onTap: () {
        AutoRouter.of(context).push(AllCameraRoute(title: 'ตู้เก็บ Macbook 1'));
      },
    );
  }
}
