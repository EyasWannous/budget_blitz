import 'package:budget_blitz/calendar_tab_bar/view/calendar_tab_bar.dart';
import 'package:budget_blitz/drawer/view/view.dart';
import 'package:flutter/material.dart';

class HomeViewNoSliver extends StatefulWidget {
  const HomeViewNoSliver({super.key});

  @override
  State<HomeViewNoSliver> createState() => _HomeViewNoSliverState();
}

class _HomeViewNoSliverState extends State<HomeViewNoSliver>
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
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Balance",
                  style: Theme.of(context).appBarTheme.titleTextStyle,
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 36,
                ),
                Center(
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
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                          children: [
                            TextSpan(
                              text: "250 ",
                              style:
                                  Theme.of(context).appBarTheme.titleTextStyle,
                            ),
                            TextSpan(
                              text: "\$",
                              style: Theme.of(context)
                                  .appBarTheme
                                  .titleTextStyle
                                  ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Icon(
        //       Icons.login,
        //     ),
        //   ),
        // ],
        toolbarHeight: MediaQuery.sizeOf(context).height / 6,
        bottom: TabBar(
          // dividerColor: Theme.of(context).colorScheme.onPrimary,
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
      drawer: const DrawerPage(),
      body: TabBarView(
        controller: tabController,
        children: const [
          CalendarTabBar(),
          CalendarTabBar(),
        ],
      ),
    );
  }
}
