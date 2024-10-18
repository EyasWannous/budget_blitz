import 'package:budget_blitz/helpers/networkHelper/bloc/network_bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkHelper {
  static void observeNetwork() {
    Connectivity()
        .onConnectivityChanged
        .listen((List<ConnectivityResult> result) {
      if (!result.contains(ConnectivityResult.none)) {
        NetworkBloc().add(const NetworkNotify(isConnected: true));
      } else if (result.contains(ConnectivityResult.none)) {
        NetworkBloc().add(const NetworkNotify());
      }
    });
  }
}
