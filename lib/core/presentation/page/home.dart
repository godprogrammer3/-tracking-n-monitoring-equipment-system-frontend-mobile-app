import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        DashBoardRouter(),
        HistoryRouter(),
        UnlockLockerRouter(),
        NotificationRouter(),
        AccountRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return Container(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, -1),
                blurRadius: 1,
                color: Colors.grey.shade300,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () => tabsRouter.setActiveIndex(0),
                child: Image.asset(
                  tabsRouter.activeIndex == 0
                      ? 'assets/icons/core/icon_nav_dash_board_active.png'
                      : 'assets/icons/core/icon_nav_dash_board.png',
                  width: 28,
                  height: 28,
                ),
              ),
              InkWell(
                onTap: () => tabsRouter.setActiveIndex(1),
                child: Image.asset(
                  tabsRouter.activeIndex == 1
                      ? 'assets/icons/core/icon_nav_history_active.png'
                      : 'assets/icons/core/icon_nav_history.png',
                  width: 28,
                  height: 28,
                ),
              ),
              InkWell(
                onTap: () => tabsRouter.setActiveIndex(2),
                child: Image.asset(
                  tabsRouter.activeIndex == 2
                      ? 'assets/icons/core/icon_nav_unlock_locker_active.png'
                      : 'assets/icons/core/icon_nav_unlock_locker.png',
                  width: 28,
                  height: 28,
                ),
              ),
              InkWell(
                onTap: () => tabsRouter.setActiveIndex(3),
                child: Image.asset(
                  tabsRouter.activeIndex == 3
                      ? 'assets/icons/core/icon_nav_noti_active.png'
                      : 'assets/icons/core/icon_nav_noti.png',
                  width: 28,
                  height: 28,
                ),
              ),
              IconButton(
                onPressed: () {
                  tabsRouter.setActiveIndex(4);
                },
                icon: Icon(
                  Icons.account_circle,
                  color: tabsRouter.activeIndex == 4
                      ? Theme.of(context).colorScheme.primary
                      : Colors.grey,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
