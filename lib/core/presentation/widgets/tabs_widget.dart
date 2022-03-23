import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TabsWidget extends HookWidget {
  final List<Widget> tabs;
  final List<String> tabsBar;
  final void Function(int)? onTabChanged;

  const TabsWidget({
    required this.tabs,
    required this.tabsBar,
    this.onTabChanged,
  }) : assert(tabs.length == tabsBar.length);

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> currentTabIndex = useState(0);
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                spreadRadius: 0.5,
                blurRadius: 1,
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List<Widget>.generate(tabsBar.length, (index) {
              return Expanded(
                child: InkWell(
                  onTap: () {
                    currentTabIndex.value = index;
                    onTabChanged?.call(index);
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: currentTabIndex.value == index
                          ? Colors.white
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: currentTabIndex.value == index
                          ? [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                spreadRadius: 1,
                                blurRadius: 2,
                              )
                            ]
                          : null,
                    ),
                    child: Center(
                      child: Text(
                        tabsBar[index],
                        style: Theme.of(context)
                            .primaryTextTheme
                            .headline1!
                            .copyWith(
                              color: currentTabIndex.value == index
                                  ? Theme.of(context).colorScheme.secondary
                                  : Colors.grey,
                            ),
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
        Expanded(
          child: renderTab(context, currentTabIndex.value),
        ),
      ],
    );
  }

  Widget renderTab(BuildContext context, int tabIndex) {
    return tabs[tabIndex];
  }
}
