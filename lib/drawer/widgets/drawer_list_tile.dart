// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:budget_blitz/theme/theme.dart';
import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    required this.iconData,
    required this.title,
    required this.onTap,
  });

  final IconData iconData;
  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return ListTile(
      leading: Icon(
        iconData,
        size: MediaQuery.sizeOf(context).width / 16,
        color: theme.colorScheme.onPrimary,
      ),
      title: Text(
        title,
        style: theme.primaryTextTheme.bodyMedium?.copyWith(
          color: FlutterTheme.outerSpace,
        ),
      ),
      onTap: onTap,
    );
  }
}
