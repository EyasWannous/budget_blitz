import 'package:budget_blitz/categories/bloc/categories_bloc.dart';
import 'package:budget_blitz/categories/view/categories_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CategoriesBloc>(
      create: (_) => CategoriesBloc(),
      child: const CategoriesView(),
    );
  }
}
