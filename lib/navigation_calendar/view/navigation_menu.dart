import 'package:flutter/material.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int _selectedIndex = 0;
  List<Widget> bodies = [
    Column(
      children: [
        const Text("data"),
        Container(
          color: Colors.red,
        )
      ],
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.black,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.yellow,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: NavigationBar(
      //   height: MediaQuery.sizeOf(context).height / 12,
      //   selectedIndex: _selectedIndex,
      //   onDestinationSelected: (index) => {
      //     setState(() {
      //       _selectedIndex = index;
      //     })
      //   },
      //   destinations: [
      //     NavigationDestination(
      //       icon: Text(
      //         "Day",
      //         style: Theme.of(context).primaryTextTheme.bodyLarge,
      //       ),
      //       selectedIcon: Text(
      //         "Day",
      //         style: Theme.of(context).primaryTextTheme.bodyLarge?.copyWith(
      //               color: Theme.of(context).colorScheme.primary,
      //             ),
      //       ),
      //       label: "",
      //     ),
      //     NavigationDestination(
      //       icon: Text(
      //         "Week",
      //         style: Theme.of(context).primaryTextTheme.bodyLarge,
      //       ),
      //       selectedIcon: Text(
      //         "Week",
      //         style: Theme.of(context).primaryTextTheme.bodyLarge?.copyWith(
      //               color: Theme.of(context).colorScheme.primary,
      //             ),
      //       ),
      //       label: "",
      //     ),
      //     NavigationDestination(
      //       icon: Text(
      //         "Month",
      //         style: Theme.of(context).primaryTextTheme.bodyLarge,
      //       ),
      //       selectedIcon: Text(
      //         "Month",
      //         style: Theme.of(context).primaryTextTheme.bodyLarge?.copyWith(
      //               color: Theme.of(context).colorScheme.primary,
      //             ),
      //       ),
      //       label: "",
      //     ),
      //     NavigationDestination(
      //       icon: Text(
      //         "Year",
      //         style: Theme.of(context).primaryTextTheme.bodyLarge,
      //       ),
      //       selectedIcon: Text(
      //         "Year",
      //         style: Theme.of(context).primaryTextTheme.bodyLarge?.copyWith(
      //               color: Theme.of(context).colorScheme.primary,
      //             ),
      //       ),
      //       label: "",
      //     ),
      //     NavigationDestination(
      //       icon: Text(
      //         "Period",
      //         style: Theme.of(context).primaryTextTheme.bodyLarge,
      //       ),
      //       selectedIcon: Text(
      //         "Period",
      //         style: Theme.of(context).primaryTextTheme.bodyLarge?.copyWith(
      //               color: Theme.of(context).colorScheme.primary,
      //             ),
      //       ),
      //       label: "",
      //     ),
      //   ],
      // ),
      body: Padding(
        padding: const EdgeInsets.only(
            // top: MediaQuery.sizeOf(context).height / 6,
            ),
        child: bodies[_selectedIndex],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black38,
          //     spreadRadius: 0,
          //     blurRadius: 10,
          //   ),
          // ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            onTap: (index) => {
              setState(() {
                _selectedIndex = index;
              })
            },
            items: [
              BottomNavigationBarItem(
                activeIcon: Text(
                  "Day",
                  style: Theme.of(context).primaryTextTheme.bodyLarge,
                ),
                icon: Text(
                  "Day",
                  style: Theme.of(context).primaryTextTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                activeIcon: Text(
                  "Week",
                  style: Theme.of(context).primaryTextTheme.bodyLarge,
                ),
                icon: Text(
                  "Week",
                  style: Theme.of(context).primaryTextTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                activeIcon: Text(
                  "Month",
                  style: Theme.of(context).primaryTextTheme.bodyLarge,
                ),
                icon: Text(
                  "Month",
                  style: Theme.of(context).primaryTextTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                activeIcon: Text(
                  "Year",
                  style: Theme.of(context).primaryTextTheme.bodyLarge,
                ),
                icon: Text(
                  "Year",
                  style: Theme.of(context).primaryTextTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                activeIcon: Text(
                  "Period",
                  style: Theme.of(context).primaryTextTheme.bodyLarge,
                ),
                icon: Text(
                  "Period",
                  style: Theme.of(context).primaryTextTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
                label: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
