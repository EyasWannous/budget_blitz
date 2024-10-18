part of 'navigation_calendar_bloc.dart';

sealed class NavigationCalendarState extends Equatable {
  const NavigationCalendarState();
  
  @override
  List<Object> get props => [];
}

final class NavigationCalendarInitial extends NavigationCalendarState {}
