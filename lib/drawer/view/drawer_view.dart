import 'package:budget_blitz/drawer/widgets/drawer_list_tile.dart';
import 'package:budget_blitz/theme/theme.dart';
import 'package:flutter/material.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            currentAccountPictureSize: Size(
              MediaQuery.sizeOf(context).width / 4,
              MediaQuery.sizeOf(context).height / 12,
            ),
            accountName: Text(
              "Eyas Wannous",
              style: Theme.of(context).primaryTextTheme.bodyLarge,
            ),
            accountEmail: Text(
              "eyaswannous@gmail.com",
              style: Theme.of(context).primaryTextTheme.bodyLarge,
            ),
            currentAccountPicture: Card(
              color: Theme.of(context).colorScheme.primary,
              semanticContainer: false,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: const CircleBorder(),
              elevation: 0,
              child: Image.asset(
                "assets/images/no_profile.png",
                fit: BoxFit.cover,
              ),
            ),
            otherAccountsPictures: [
              Icon(
                Icons.sunny,
                size: MediaQuery.sizeOf(context).width / 16,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              Icon(
                Icons.logout,
                size: MediaQuery.sizeOf(context).width / 16,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ],
          ),
          // DrawerHeader(
          //   curve: Curves.linear,
          //   decoration: BoxDecoration(
          //     color: Theme.of(context).colorScheme.primary,
          //   ),
          //   child: const Text('Drawer Header'),
          // ),
          DrawerListTile(
            iconData: Icons.home,
            title: 'Home',
            onTap: () {},
          ),
          DrawerListTile(
            iconData: Icons.account_balance,
            title: 'Accounts',
            onTap: () {},
          ),
          DrawerListTile(
            iconData: Icons.bar_chart_rounded,
            title: 'Charts',
            onTap: () {},
          ),
          DrawerListTile(
            iconData: Icons.category_rounded,
            title: 'Categories',
            onTap: () {},
          ),
          DrawerListTile(
            iconData: Icons.payments_rounded,
            title: 'Regular Payments',
            onTap: () {},
          ),
          DrawerListTile(
            iconData: Icons.notifications_active_rounded,
            title: 'Reminders',
            onTap: () {},
          ),
          DrawerListTile(
            iconData: Icons.currency_exchange_rounded,
            title: 'Currency',
            onTap: () {},
          ),
          DrawerListTile(
            iconData: Icons.settings,
            title: 'Settings',
            onTap: () {},
          ),
          DrawerListTile(
            iconData: Icons.share_rounded,
            title: 'Share with friends',
            onTap: () {},
          ),
          const Divider(),
          DrawerListTile(
            iconData: Icons.rate_review_rounded,
            title: 'Rate the app',
            onTap: () {},
          ),
          DrawerListTile(
            iconData: Icons.contact_support_rounded,
            title: 'Contact the support team',
            onTap: () {},
          ),
          AboutListTile(
            icon: Icon(
              Icons.info,
              size: MediaQuery.sizeOf(context).width / 16,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            applicationIcon: Icon(
              Icons.local_play,
              size: MediaQuery.sizeOf(context).width / 16,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            applicationName: 'Budget Blitz',
            applicationVersion: '1.0.0',
            applicationLegalese: '© 2024 No Company',
            aboutBoxChildren: [
              Text(
                'eyaswannous@gamil.com',
                style: Theme.of(context).primaryTextTheme.bodyMedium,
              )

              ///Content goes here...
            ],
            child: Text(
              'About app',
              style: Theme.of(context).primaryTextTheme.bodyMedium?.copyWith(
                    color: FlutterTheme.outerSpace,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
