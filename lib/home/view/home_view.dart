import 'package:budget_blitz/calendar_tab_bar/view/calendar_tab_bar.dart';
import 'package:budget_blitz/drawer/view/view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 2,
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
    return Scaffold(
      drawer: const DrawerPage(),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: const [StretchMode.fadeTitle],
                background: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 4.5,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.balance,
                              size: MediaQuery.sizeOf(context).width / 12,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width / 36,
                            ),
                            RichText(
                              text: TextSpan(
                                text: "Total: ",
                                style: Theme.of(context)
                                    .appBarTheme
                                    .titleTextStyle
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                                children: [
                                  TextSpan(
                                    text: "250",
                                    style: Theme.of(context)
                                        .appBarTheme
                                        .titleTextStyle,
                                  ),
                                  TextSpan(
                                    text: "\$",
                                    style: Theme.of(context)
                                        .appBarTheme
                                        .titleTextStyle
                                        ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              expandedHeight: MediaQuery.sizeOf(context).height / 4,
              collapsedHeight: MediaQuery.sizeOf(context).height / 12,
              toolbarHeight: MediaQuery.sizeOf(context).height / 12,
              title: Text(
                "Balance",
                style: Theme.of(context).appBarTheme.titleTextStyle,
              ),
              snap: false,
              pinned: true,
              floating: false,
              forceElevated: innerBoxIsScrolled,
              bottom: TabBar(
                dividerColor: Colors.transparent,
                controller: tabController,
                tabs: const [
                  Tab(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.attach_money_rounded,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text("INCOME"),
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.money_off_csred_rounded,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text("EXPENSE"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: tabController,
          children: const [
            CalendarTabBar(),
            CalendarTabBar(),
          ],
        ),
      ),
    );
  }
}
