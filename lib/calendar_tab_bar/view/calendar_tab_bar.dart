import 'package:budget_blitz/calendar_card/view/calendar_card.dart';
import 'package:flutter/material.dart';

class CalendarTabBar extends StatefulWidget {
  const CalendarTabBar({super.key});

  @override
  State<CalendarTabBar> createState() => _CalendarTabBarState();
}

class _CalendarTabBarState extends State<CalendarTabBar>
    with TickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 5,
      vsync: this,
    );
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Column(
      children: [
        Card(
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          child: TabBar.secondary(
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: theme.primaryTextTheme.bodyMedium,
            unselectedLabelStyle: theme.primaryTextTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: theme.colorScheme.secondary.withAlpha(128),
            ),
            // overlayColor: WidgetStateProperty.all(Colors.transparent),
            splashBorderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
            // dividerColor: theme.colorScheme.onPrimary
            dividerColor: Colors.transparent,
            controller: tabController,
            tabs: const [
              Tab(text: 'Day'),
              Tab(text: 'Week'),
              Tab(text: 'Month'),
              Tab(text: 'Year'),
              Tab(text: 'Period'),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              ListView(
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height / 4,
                    child: CalendarCard(),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height -
                        MediaQuery.sizeOf(context).height / 4,
                    child: const Column(
                      children: [
                        ListTile(
                          title: Text("data"),
                        ),
                        ListTile(
                          title: Text("data"),
                        ),
                        ListTile(
                          title: Text("data"),
                        ),
                        ListTile(
                          title: Text("data"),
                        ),
                        ListTile(
                          title: Text("data"),
                        ),
                        ListTile(
                          title: Text("data"),
                        ),
                        ListTile(
                          title: Text("data"),
                        ),
                        ListTile(
                          title: Text("data"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              CustomScrollView(
                slivers: [
                  SliverPersistentHeader(
                    delegate: _PinnedHeaderDelegate(
                      maxHeight: MediaQuery.sizeOf(context).height / 4,
                      minHeihgt: MediaQuery.sizeOf(context).height / 8,
                    ),
                    pinned: true,
                  ),
                  SliverList.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        color: index.isEven ? Colors.white : Colors.black12,
                        height: 100.0,
                      );
                    },
                    itemCount: 25,
                  ),
                ],
              ),
              CalendarCard(),
              CalendarCard(),
              CalendarCard(),
            ],
          ),
        ),
      ],
    );
  }
}

class _PinnedHeaderDelegate extends SliverPersistentHeaderDelegate {
  const _PinnedHeaderDelegate({
    required this.maxHeight,
    required this.minHeihgt,
  });
  final double maxHeight;
  final double minHeihgt;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Expanded(
      child: CalendarCard(),
    );
  }

  @override
  double get maxExtent => maxHeight; // Max Height of the pinned widget

  @override
  double get minExtent => minHeihgt; // Min Height of the pinned widget

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
