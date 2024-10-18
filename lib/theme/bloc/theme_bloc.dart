import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:budget_blitz/theme/bloc/theme_helper.dart';
import 'package:budget_blitz/theme/theme.dart';

part 'theme_event.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeData> {
  ThemeBloc() : super(ThemeData.light()) {
    on<InitialThemeSetEvent>(_onInitialThemeSetEvent);
    on<ThemeSwitchEvent>(_onThemeSwitchEvent);
  }

  Future<void> _onInitialThemeSetEvent(event, emit) async {
    final bool hasDarkTheme = await isDark();
    if (hasDarkTheme) {
      emit(FlutterTheme.dark);
      return;
    }

    emit(FlutterTheme.light);
  }

  void _onThemeSwitchEvent(event, emit) {
    final isDark = state.colorScheme == FlutterTheme.dark.colorScheme;
    emit(isDark ? FlutterTheme.light : FlutterTheme.dark);
    setTheme(isDark);
  }
}
