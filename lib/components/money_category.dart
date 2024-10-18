import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MoneyCategory extends StatelessWidget {
  const MoneyCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: [
        FaIcon(FontAwesomeIcons.heart),
        Text('data'),
      ],
    );
  }
}
