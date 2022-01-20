import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DashBoardPage extends HookWidget {
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final List<int> list = [1, 2, 3, 4, 5];
    final ValueNotifier<int> currentCarouselIndex = useState(0);
    final ValueNotifier<int> currentTabIndex = useState(0);
    return Scaffold(
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
              Expanded(child: _buildBody(context, currentTabIndex)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context, ValueNotifier<int> currentTabIndex) {
    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () => currentTabIndex.value = 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'อุปกรณ์',
                          style: Theme.of(context)
                              .primaryTextTheme
                              .headline1!
                              .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () => currentTabIndex.value = 1,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'ตู้ล็อกเกอร์',
                          style: Theme.of(context)
                              .primaryTextTheme
                              .headline1!
                              .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: renderTab(context, currentTabIndex.value),
          ),
        ]),
      ),
    );
  }

  Widget renderTab(BuildContext context, int tabIndex) {
    const List<Widget> tabs = [
      Icon(Icons.directions_car),
      Icon(Icons.directions_transit),
    ];

    return tabs[tabIndex];
  }
}
