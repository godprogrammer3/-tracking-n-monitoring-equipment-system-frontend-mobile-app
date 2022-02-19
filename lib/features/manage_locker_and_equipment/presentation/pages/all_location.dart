import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/tabs_widget.dart';
import 'package:frontend/core/utils/enum.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/list_locker_and_equipment_widget.dart';

class AllLocationPage extends StatelessWidget {
  final ManagementLocationView viewBy;
  final bool isHasLocation;
  final String title;
  const AllLocationPage({
    Key? key,
    required this.viewBy,
    required this.title,
    this.isHasLocation = true,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(color: Colors.black),
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
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          screenSize.width * 0.1,
          screenSize.height * 0.05,
          screenSize.width * 0.1,
          0,
        ),
        child: isHasLocation
            ? _buildFoundCase(context)
            : _buildNotFoundCase(context),
      ),
    );
  }

  Widget _buildNotFoundCase(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/manage_locker_and_equipment/location_icon_large.png',
              width: 100,
              height: 100,
              fit: BoxFit.fill,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                '+ เพิ่มสถานที่',
                style: Theme.of(context).primaryTextTheme.headline3!.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _buildFoundCase(BuildContext context) {
    const buildings = ['ECC Building', 'Headquarters'];
    const floors = ['ชั้น 5', 'ชั้น 6', 'ชั้น 7'];
    const rooms = [
      'ห้อง 504',
      'ห้อง 505',
      'ห้อง 506',
      'ห้อง 507',
      'ห้อง 508',
      'ห้อง 508'
    ];
    return ListView.builder(
        itemCount: getLength(
          buildings.length,
          floors.length,
          rooms.length,
        ),
        itemBuilder: (context, index) {
          switch (viewBy) {
            case ManagementLocationView.building:
              return Card(
                child: ListTile(
                  title: Text(buildings[index]),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    AutoRouter.of(context).push(
                      AllLocationRoute(
                        viewBy: ManagementLocationView.floor,
                        title: buildings[index],
                      ),
                    );
                  },
                ),
              );
            case ManagementLocationView.floor:
              return Card(
                child: ListTile(
                  title: Text(floors[index]),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    AutoRouter.of(context).push(
                      AllLocationRoute(
                        viewBy: ManagementLocationView.room,
                        title: floors[index],
                      ),
                    );
                  },
                ),
              );
            default:
              return Card(
                child: ListTile(
                  title: Text(rooms[index]),
                ),
              );
          }
        });
  }

  int getLength(
    int buildingsLength,
    int floorsLength,
    int roomsLength,
  ) {
    switch (viewBy) {
      case ManagementLocationView.building:
        return buildingsLength;
      case ManagementLocationView.floor:
        return floorsLength;
      default:
        return roomsLength;
    }
  }
}
