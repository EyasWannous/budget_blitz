import 'package:budget_blitz/helpers/networkHelper/bloc/network_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:budget_blitz/app/bloc/app_bloc.dart';
import 'package:budget_blitz/theme/bloc/theme_bloc.dart';

import 'app_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeBloc>(
          create: (_) => ThemeBloc()..add(InitialThemeSetEvent()),
        ),
        BlocProvider<AppBloc>(
          create: (_) => AppBloc(),
        ),
        BlocProvider<NetworkBloc>(
          create: (_) => NetworkBloc()..add(NetworkObserve()),
        ),
      ],
      child: const AppView(),
    );
  }
}
