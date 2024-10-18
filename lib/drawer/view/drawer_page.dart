import 'package:budget_blitz/drawer/bloc/drawer_bloc.dart';
import 'package:budget_blitz/drawer/view/drawer_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DrawerBloc>(
      create: (_) => DrawerBloc(),
      child: const DrawerView(),
    );
  }
}
