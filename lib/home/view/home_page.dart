import 'package:budget_blitz/home/bloc/home_bloc.dart';
import 'package:budget_blitz/home/view/home_view_no_sliver.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (_) => HomeBloc(),
      child: const HomeViewNoSliver(),
    );
  }
}
