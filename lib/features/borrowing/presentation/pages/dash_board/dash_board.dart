import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/widgets/tabs_widget.dart';
import 'package:frontend/features/borrowing/presentation/widgets/equipment_tab.dart';
import 'package:frontend/core/presentation/widgets/home_drawer.dart';
import 'package:frontend/features/borrowing/presentation/widgets/locker_tab.dart';

class DashBoardPage extends HookWidget {
  final CarouselController _controller = CarouselController();
  final List<Widget> tabs = const <Widget>[EquipmentTab(), LockerTab()];
  final List<String> tabsBar = const ['อุปกรณ์', 'ตู้ล็อกเกอร์'];
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final List<int> list = [1, 2, 3, 4, 5];
    final ValueNotifier<int> currentCarouselIndex = useState(0);
    return Scaffold(
      key: _key,
      drawer: const HomeDrawer(),
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: screenSize.height * 0.3,
            child: Image.asset(
              'assets/images/borrowing/dash_board_background.png',
              fit: BoxFit.fill,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                  screenSize.width * 0.1,
                  screenSize.height * 0.05,
                  screenSize.width * 0.1,
                  0,
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => _key.currentState!.openDrawer(),
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Welcome, Saitan',
                      style: Theme.of(context)
                          .primaryTextTheme
                          .headline1!
                          .copyWith(color: Colors.white),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CarouselSlider(
                carouselController: _controller,
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  height: screenSize.height * 0.2,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    currentCarouselIndex.value = index;
                  },
                ),
                items: list
                    .map(
                      (item) => Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(child: Text(item.toString())),
                      ),
                    )
                    .toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: list.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 8.0,
                      height: 8.0,
                      margin: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 4.0,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black)
                            .withOpacity(
                          currentCarouselIndex.value == entry.key ? 0.9 : 0.4,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabsWidget(
                    tabsBar: tabsBar,
                    tabs: tabs,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
