import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'navigation_calendar_event.dart';
part 'navigation_calendar_state.dart';

class NavigationCalendarBloc extends Bloc<NavigationCalendarEvent, NavigationCalendarState> {
  NavigationCalendarBloc() : super(NavigationCalendarInitial()) {
    on<NavigationCalendarEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
