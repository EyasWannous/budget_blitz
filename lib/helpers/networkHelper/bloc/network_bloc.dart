import 'package:bloc/bloc.dart';
import 'package:budget_blitz/helpers/networkHelper/network_helper.dart';
import 'package:equatable/equatable.dart';

part 'network_event.dart';
part 'network_state.dart';

class NetworkBloc extends Bloc<NetworkEvent, NetworkState> {
  NetworkBloc._() : super(NetworkInitial()) {
    on<NetworkObserve>(_observe);
    on<NetworkNotify>(_notifyStatus);
  }

  static final NetworkBloc _instance = NetworkBloc._();

  factory NetworkBloc() => _instance;

  void _observe(NetworkObserve event, Emitter<NetworkState> emit) {
    NetworkHelper.observeNetwork();
  }

  void _notifyStatus(NetworkNotify event, Emitter<NetworkState> emit) {
    event.isConnected ? emit(NetworkSuccess()) : emit(NetworkFailure());
  }
}
