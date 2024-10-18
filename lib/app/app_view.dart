import 'package:budget_blitz/categories/view/categories_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:budget_blitz/theme/bloc/theme_bloc.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeData>(
      builder: (_, themeState) {
        return MaterialApp(
          theme: themeState,
          debugShowCheckedModeBanner: false,
          // home: const MyHomePage(title: 'Flutter Demo Home Page'),
          // home: const Home(),
          // home: const HomePage(),
          home: const CategoriesPage(),
        );
      },
    );
  }
}
